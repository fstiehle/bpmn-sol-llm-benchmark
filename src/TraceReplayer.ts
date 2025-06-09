import assert from "assert";
import { TriggerEncoding } from "chorpiler";
import { ethers } from "hardhat";
import * as path from "path";
import * as fs from "fs";
import chorpiler from "chorpiler";
import { TestConfig } from "./TestConfig";
import { ENCODINGS_DIR, NR_NON_CONFORMING_TRACES, XES_DIR, XES_PARSER } from "../bench.config";
import { logDebug } from "./util";

export const capitalize = (name: string): string => {
  return name.charAt(0).toUpperCase() + name.slice(1);
}

const tab = (n: number) => "  ".repeat(n);

export class TraceReplayer {
  constructor(
    private solDir: string,
    private test: TestConfig,
    private contractPrefix: string
  ) {}

  async replay() {
    const solFiles = fs.readdirSync(this.solDir).filter(file => file.endsWith('.sol'));
    const results: { process: string; true_positives: number; number_positives: number; true_negative: number; number_negatives: number }[] = [];

    for (const file of solFiles) {
      const name = path.basename(file, '.sol');
      console.log(`${tab(1)}🔬 Simulate: ${name} in ${this.test.name}`);

      const eventLog = await XES_PARSER.fromXML(
        fs.readFileSync(path.join(XES_DIR, name + '.xes'))
      );

      const triggerEncodingData = JSON.parse(
        fs.readFileSync(path.join(ENCODINGS_DIR, name + '.json'), 'utf-8')
      );
      const triggerEncoding = TriggerEncoding.fromJSON(triggerEncodingData);

      const wallets = (await ethers.getSigners())
        .slice(0, triggerEncoding.participants.size);

      let correctTraceCount = 0;

      // replay log
      for (const [i, trace] of eventLog.traces.entries()) {
        let contract;
        try {
          contract = await ethers.deployContract(
            `${this.contractPrefix}${name}`,
            [[...wallets.values()].map(v => v.address)]
          );
        } catch (error) {
          console.log(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
          continue;
        }

        const contracts = new Map<string, any>();
        for (const [id, num] of triggerEncoding.participants) {
          contracts.set(id, contract.connect(wallets[num]));
        }

        const report: {
          traceIndex: number;
          eventName: string;
          taskID: number;
          preTokenState: any;
          postTokenState: any;
          tokenStateChanged: boolean;
          error?: string;
        }[] = [];

        console.log(`${tab(2)}🔁 Replay Conforming Trace: #${i + 1}`);
        let allTokenStatesChanged = true;

        for (const event of trace) {
          if (event.dataChange && event.dataChange.length > 0) {
            for (const el of event.dataChange) {
              let preConditionState;
              try {
                preConditionState = await contract.conditions();
              } catch (error) {
                logDebug(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
                allTokenStatesChanged = false;
                continue;
              }
              let updatedState = Number(preConditionState);
              updatedState |= Number(el.val);
              const methodName = "set" + capitalize(el.variable);
              logDebug(`${tab(3)}🛠️ Try:`, methodName, updatedState);
              try {
                await (await contract[methodName](updatedState)).wait(1);
              } catch (error) {
                logDebug(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
                allTokenStatesChanged = false;
                continue;
              }
            }
          }

          const participant = contracts.get(event.source);
          const taskID = triggerEncoding.tasks.get(event.id);
          assert(participant !== undefined && taskID !== undefined, 
            `source (participant) '${event.source}' for event '${event.name}' not found`);

          const preTokenState = await contract.tokenState();
          logDebug(`${tab(3)}🔎 Try: TaskID:`, taskID, `"${event.name}"`);
          let postTokenState;
          try {
            const methodToCall = this.test.multipleFunc ? event.id : "enact";
            if (typeof participant[methodToCall] !== "function") {
              throw new Error(`Method ${methodToCall} does not exist on the contract`);
            }
            if (this.test.multipleFunc) {
              await (await participant[methodToCall]()).wait(1);
            } else {
              await (await participant[methodToCall](taskID)).wait(1);
            }
            postTokenState = await contract.tokenState();
          } catch (error) {
            postTokenState = await contract.tokenState();
            report.push({
              traceIndex: i,
              eventName: event.name,
              taskID,
              preTokenState: preTokenState.toString(),
              postTokenState: postTokenState.toString(),
              tokenStateChanged: postTokenState !== preTokenState,
              error: (error instanceof Error ? error.message : String(error)).slice(0, 30)
            });
            logDebug(`${tab(3)}❌`, error instanceof Error ? error.message : String(error));
            allTokenStatesChanged = false;
            continue;
          }

          if (postTokenState !== preTokenState) {
            logDebug(`${tab(3)}🔄 Token state changed: ${preTokenState} -> ${postTokenState}`);
          } else {
            allTokenStatesChanged = false;
          }

          report.push({
            traceIndex: i,
            eventName: event.name,
            taskID,
            preTokenState: preTokenState.toString(),
            postTokenState: postTokenState.toString(),
            tokenStateChanged: postTokenState !== preTokenState
          });
        }

        const finalTokenState = await contract.tokenState();
        if (Number(finalTokenState) !== 0) {
          console.warn(`${tab(3)}⚠️ End of process not reached! Final token state: ${finalTokenState}`);
        } else {
          logDebug(`${tab(3)}✅ Process completed successfully with token state 0.`);
        }

        const tableData = report.map(({ eventName, taskID, preTokenState, postTokenState, tokenStateChanged, error }) => ({
          "📝 Event": eventName,
          "🔢 TaskID": taskID,
          "🔵 Pre": preTokenState,
          "🟢 Post": postTokenState,
          "🔄 Changed": tokenStateChanged ? "✅" : "❌",
          "⚠️ Error": error || ""
        }));
        console.log(`${tab(3)}Trace Report:`);
        console.table(tableData);

        if (allTokenStatesChanged) {
          correctTraceCount++;
          console.log(`${tab(3)}✅ Trace #${i + 1} conformed!`);
        } else {
          console.log(`${tab(3)}❌ Trace #${i + 1} did not conform.`);
        }
      }

      // --- Non-conforming traces ---
      const badLog = chorpiler.utils.EventLog.genNonConformingLog(
        eventLog, triggerEncoding, NR_NON_CONFORMING_TRACES
      );
      let rejectedTraces = 0; // <-- Track rejected traces

      for (const [i, trace] of badLog.traces.entries()) {
        console.log(`Replay Non-Conforming Trace ${i} (${name})`);
        let contract;
        try {
          contract = await ethers.deployContract(
            `${this.contractPrefix}${name}`,
            [[...wallets.values()].map(v => v.address)]
          );
        } catch (error) {
          console.log(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
          continue;
        }

        const contracts = new Map<string, any>();
        for (const [id, num] of triggerEncoding.participants) {
          contracts.set(id, contract.connect(wallets[num]));
        }
        let eventsRejected = 0;
        const report: {
          traceIndex: number;
          eventName: string;
          taskID: number;
          preTokenState: any;
          postTokenState: any;
          tokenStateChanged: boolean;
          error?: string;
        }[] = [];

        for (const event of trace) {
          if (event.dataChange && event.dataChange.length > 0) {
            for (const el of event.dataChange) {
              let preConditionState;
              try {
                preConditionState = await contract.conditions();
              } catch (error) {
                logDebug(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
                continue;
              }
              let updatedState = Number(preConditionState);
              updatedState |= Number(el.val);
              const methodName = "set" + capitalize(el.variable);
              logDebug(`${tab(3)}🛠️ Try:`, methodName, updatedState);
              try {
                await (await contract[methodName](updatedState)).wait(1);
              } catch (error) {
                logDebug(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
                continue;
              }
            }
          }

          const participant = contracts.get(event.source);
          const taskID = triggerEncoding.tasks.get(event.id);
          assert(participant !== undefined && taskID !== undefined, 
            `source (participant) '${event.source}' for event '${event.name}' not found`);

          const preTokenState = await contract.tokenState();
          logDebug(`${tab(3)}🔎 Try: TaskID:`, taskID, `"${event.name}"`);
          let postTokenState;
          try {
            const methodToCall = this.test.multipleFunc ? event.id : "enact";
            if (typeof participant[methodToCall] !== "function") {
              throw new Error(`Method ${methodToCall} does not exist on the contract`);
            }
            if (this.test.multipleFunc) {
              await (await participant[methodToCall]()).wait(1);
            } else {
              await (await participant[methodToCall](taskID)).wait(1);
            }
            postTokenState = await contract.tokenState();
          } catch (error) {
            postTokenState = await contract.tokenState();
            logDebug(`${tab(3)}❌`, error instanceof Error ? error.message : String(error));
            report.push({
              traceIndex: i,
              eventName: event.name,
              taskID,
              preTokenState: preTokenState.toString(),
              postTokenState: postTokenState.toString(),
              tokenStateChanged: postTokenState !== preTokenState,
              error: (error instanceof Error ? error.message : String(error)).slice(0, 30)
            });
            continue;
          }
          if (postTokenState !== preTokenState) {
            logDebug(`${tab(3)}🔄 Token state changed: ${preTokenState} -> ${postTokenState}`);
          } else {
            eventsRejected++;
            logDebug(`${tab(3)}✅ Token state did not change.`);
          }
          report.push({
            traceIndex: i,
            eventName: event.name,
            taskID,
            preTokenState: preTokenState.toString(),
            postTokenState: postTokenState.toString(),
            tokenStateChanged: postTokenState !== preTokenState
          });
        }
        // At least one event should be rejected or process not finished
        logDebug(`${tab(3)} ${eventsRejected}`);
        const traceRejected = eventsRejected > 0 || !((await contract.tokenState()).toString() === "0");
        if (traceRejected) {
          rejectedTraces++;
        }

        // Print non-conforming trace report
        const tableData = report.map(({ eventName, taskID, preTokenState, postTokenState, tokenStateChanged, error }) => ({
          "📝 Event": eventName,
          "🔢 TaskID": taskID,
          "🔵 Pre": preTokenState,
          "🟢 Post": postTokenState,
          "🔄 Changed": tokenStateChanged ? "✅" : "❌",
          "⚠️ Error": error || ""
        }));
        console.log(`${tab(3)}Non-Conforming Trace Report:`);
        console.table(tableData);
      };

      results.push({
        process: name,
        true_positives: correctTraceCount,
        number_positives: eventLog.traces.length,
        true_negative: rejectedTraces, // <-- Use the sum of rejected traces
        number_negatives: badLog.traces.length
      });
    }

    const experimentSummary = {
      name: this.test.name,
      timestamp: new Date().toISOString(),
      model: this.test.model,
      gascost: 0,
      processes: results
    };

    const outDir = path.join("log", "execution", this.test.stamp, );
    if (!fs.existsSync(outDir)) {
      fs.mkdirSync(outDir, { recursive: true });
    }
    const outPath = path.join(outDir, `summary.json`);
    fs.writeFileSync(outPath, JSON.stringify(experimentSummary, null, 2), "utf-8");
    console.log(`${tab(1)}💾 Saved run summary to ${outPath}`);

    const summaryTable = results.map(r => ({
      "📦 Process": r.process,
      "✅ True Positives": `${r.true_positives} / ${r.number_positives}`,
      "❌ False Positives": `${r.number_positives - r.true_positives}`,
      "✅ True Negatives": `${r.true_negative} / ${r.number_negatives}`,
      "❌ False Negatives": `${r.number_negatives - r.true_negative}`
    }));

    console.log("\n" + "=".repeat(60));
    console.log(`${tab(1)}📊 Experiment Summary ${this.test.name}`);
    console.log("=".repeat(60));
    console.table(summaryTable);
    console.log("=".repeat(60) + "\n");
  }
}