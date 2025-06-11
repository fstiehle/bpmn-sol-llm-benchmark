import { TriggerEncoding } from "chorpiler";
import { ethers } from "hardhat";
import * as path from "path";
import * as fs from "fs";
import chorpiler from "chorpiler";
import { TestConfig } from "./TestConfig";
import { ENCODINGS_DIR, NR_NON_CONFORMING_TRACES, XES_DIR, XES_PARSER } from "../bench.config";
import { Wallet, HDNodeWallet } from "ethers";

// Helper to capitalize a string (global)
export function capitalize(name: string): string {
  return name.charAt(0).toUpperCase() + name.slice(1);
}

// Helper for debug logging (global)
export function logDebug(...args: any[]) {
  if (process.env.DEBUG === '1' || process.env.DEBUG === 'true') {
    console.log(...args);
  }
}

const tab = (n: number) => "  ".repeat(n);

export const randomSigners = async (amount: number, funder: any, provider: any): Promise<HDNodeWallet[]> => {
  const signers: HDNodeWallet[] = [];
  for (let i = 0; i < amount; i++) {
    let wallet = Wallet.createRandom().connect(provider);
    // Send ETH to the new wallet so it can perform a tx
    await funder.sendTransaction({
      to: wallet.address,
      value: ethers.parseEther("1")
    });
    signers.push(wallet);
  }
  return signers;
};

// Helper to apply data changes to a contract
async function applyDataChanges(contract: any, dataChanges: any[], tab3: string
  ): Promise<{ allTokenStatesChanged: boolean, gasCost: number }> {
  let allTokenStatesChanged = true;
  let gasCost = 0;
  for (const el of dataChanges) {
    let preConditionState;
    try {
      preConditionState = await contract.conditions();
    } catch (error) {
      logDebug(`${tab3}⚠️`, error instanceof Error ? error.message : String(error));
      allTokenStatesChanged = false;
      continue;
    }
    let updatedState = Number(preConditionState);
    if (Number(el.val) != 0) {
      updatedState |= Number(el.val);
    } else {
      updatedState = 0;
    }
    const methodName = "set" + capitalize(el.variable);
    logDebug(`${tab3}🛠️ Try:`, methodName, updatedState);
    try {
      const tx = await (await contract[methodName](updatedState)).wait(1);
      logDebug('Gas', 'Write', el.variable, el.val, ":", tx.gasUsed);
      gasCost += Number(tx.gasUsed);
    } catch (error) {
      logDebug(`${tab3}⚠️`, error instanceof Error ? error.message : String(error));
      allTokenStatesChanged = false;
      continue;
    }
  }
  return { allTokenStatesChanged, gasCost };
}

// Modular function to replay a single trace (conforming or non-conforming)
async function replayTrace({
  contract,
  trace,
  contracts,
  triggerEncoding,
  tab3,
  traceIndex,
  isConforming
}: {
  contract: any,
  trace: any,
  contracts: Map<string, any>,
  triggerEncoding: any,
  tab3: string,
  traceIndex: number,
  isConforming: boolean
}) {
  let allTokenStatesChanged = true;
  let eventsRejected = 0;
  const report: {
    traceIndex: number;
    eventName: string;
    taskID: number;
    preTokenState: any;
    postTokenState: any;
    tokenStateChanged: boolean;
    gasCost: number;
    error?: string;
  }[] = [];

  for (const event of trace) {
    let gasCost = 0;
    if (event.dataChange && event.dataChange.length > 0) {
      const r = await applyDataChanges(contract, event.dataChange, tab3);
      gasCost += r.gasCost;
      logDebug(`${tab3}🛠️ Data changes applied:`, event.dataChange, 'Gas cost:', gasCost);
      if (isConforming) {
        allTokenStatesChanged = allTokenStatesChanged && r.allTokenStatesChanged;
      }
    }

    if (event.id === "Instance Data Change") continue;

    if (!isConforming) {
      // do a NOOP to trigger als automatic transitions. So we can check thatt
      // the next token change is indeed because of a task being executed.
      try {
        const methodToCall = "enact";
        if (typeof contract[methodToCall] !== "function") {
          throw new Error(`Method ${methodToCall} does not exist on the contract`);
        }
        await (await contract[methodToCall](0)).wait(1);
      } catch (error) {
        throw error
      }
    }

    const participant = contracts.get(event.source);
    const taskID = triggerEncoding.tasks.get(event.id);
    if (participant === undefined || taskID === undefined) {
      throw new Error(
        `source (participant) '${event.source}' for event '${event.name}' not found (${participant},${taskID}).`
      );
    }
    const preTokenState = await contract.tokenState();
    logDebug(`${tab3}🔎 Try: TaskID:`, taskID, `"${event.name}"`);
    let postTokenState;
    try {
      const methodToCall = "enact";
      if (typeof participant[methodToCall] !== "function") {
        throw new Error(`Method ${methodToCall} does not exist on the contract`);
      }
      const tx = await (await participant[methodToCall](taskID)).wait(1);
      gasCost += tx.gasCost;
      logDebug('Gas', 'Enact', event.name, taskID, ":", tx.gasUsed);
      postTokenState = await contract.tokenState();
    } catch (error) {
      postTokenState = await contract.tokenState();
      report.push({
        traceIndex,
        eventName: event.name,
        taskID,
        preTokenState: preTokenState.toString(),
        postTokenState: postTokenState.toString(),
        tokenStateChanged: postTokenState !== preTokenState,
        gasCost,
        error: (error instanceof Error ? error.message : String(error)).slice(0, 30)
      });
      logDebug(`${tab3}❌`, error instanceof Error ? error.message : String(error));
      if (isConforming) {
        allTokenStatesChanged = false;
      } else {
        eventsRejected++;
      }
      continue;
    }
    if (postTokenState !== preTokenState) {
      logDebug(`${tab3}🔄 Token state changed: ${preTokenState} -> ${postTokenState}`);
    } else {
      if (isConforming) {
        allTokenStatesChanged = false;
      } else {
        eventsRejected++;
        logDebug(`${tab3}✅ Token state did not change.`);
      }
    }
    report.push({
      traceIndex,
      eventName: event.name,
      taskID,
      preTokenState: preTokenState.toString(),
      postTokenState: postTokenState.toString(),
      tokenStateChanged: postTokenState !== preTokenState,
      gasCost
    });
  }
  return { allTokenStatesChanged, eventsRejected, report };
}

export class TraceReplayer {
  constructor(
    private solDir: string,
    private test: TestConfig,
    private contractPrefix: string
  ) {}

  async replay() {
    const solFiles = fs.readdirSync(this.solDir).filter(file => file.endsWith('.sol'));
    const results: { process: string; true_positives: number; number_positives: number; true_negative: number; number_negatives: number, gas: number; compiled: boolean }[] = [];
    let totalTracesReplayed = 0; // <-- Add counter

    for (const file of solFiles) {
      const name = path.basename(file, '.sol');
      console.log(`${tab(1)}🔬 Simulate: ${name} in ${this.test.name}`);

      const eventLog = await XES_PARSER.fromXML(
        fs.readFileSync(path.join(XES_DIR, name + '.xes'))
      );
      if (!eventLog.traces || eventLog.traces.length === 0) {
        throw new Error(`No traces found in event log for process "${name}".`);
      }

      const triggerEncodingData = JSON.parse(
        fs.readFileSync(path.join(ENCODINGS_DIR, name + '.json'), 'utf-8')
      );
      const triggerEncoding = TriggerEncoding.fromJSON(triggerEncodingData);
      if (!triggerEncoding.participants || triggerEncoding.participants.size === 0) {
        throw new Error(`No participants found in trigger encoding for process "${name}".`);
      }
      if (!triggerEncoding.tasks || triggerEncoding.tasks.size === 0) {
        throw new Error(`No tasks found in trigger encoding for process "${name}".`);
      }

      // Use randomSigners instead of ethers.getSigners
      const wallets = await randomSigners(
        triggerEncoding.participants.size, 
        (await ethers.getSigners())[0], 
        ethers.provider);
      let totalGasCost = 0;
      let correctTraceCount = 0;
      // replay log
      for (const [i, trace] of eventLog.traces.entries()) {
        totalTracesReplayed++; // <-- Increment for each replayed trace
        let gasCost = 0;
        let contract;
        try {
          contract = await ethers.deployContract(
            `${this.contractPrefix}${name}`,
            [wallets.map(v => v.address)]
          );
          const tx = await contract.deploymentTransaction()!.wait(1)
          if (!tx) throw Error()
          gasCost += Number(tx.gasUsed);
          logDebug('Gas', 'Deployment', ':', gasCost);
        } catch (error) {
          console.log(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
          throw error;
        }

        const contracts = new Map<string, any>();
        for (const [id, num] of triggerEncoding.participants) {
          contracts.set(id, contract.connect(wallets[num]));
        }

        console.log(`${tab(2)}🔁 Replay Conforming Trace: #${i + 1}`);
        const { allTokenStatesChanged, eventsRejected, report } = await replayTrace({
          contract,
          trace,
          contracts,
          triggerEncoding,
          tab3: tab(3),
          traceIndex: i,
          isConforming: true
        });

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

        totalGasCost = gasCost + report.reduce((sum, r) => sum + (r.gasCost || 0), 0)
      }

      // --- Non-conforming traces ---
      const badLog = chorpiler.utils.EventLog.genNonConformingLog(
        eventLog, triggerEncoding, NR_NON_CONFORMING_TRACES, "b", 2
      );
      let rejectedTraces = 0; // <-- Track rejected traces

      for (const [i, trace] of badLog.traces.entries()) {
        totalTracesReplayed++; // <-- Increment for each replayed trace (non-conforming)
        console.log(`Replay Non-Conforming Trace ${i} (${name})`);
        let contract;
        try {
          contract = await ethers.deployContract(
            `${this.contractPrefix}${name}`,
            [wallets.map(v => v.address)]
          );
        } catch (error) {
          console.log(`${tab(3)}⚠️`, error instanceof Error ? error.message : String(error));
          continue;
        }

        const contracts = new Map<string, any>();
        for (const [id, num] of triggerEncoding.participants) {
          contracts.set(id, contract.connect(wallets[num]));
        }
        const { eventsRejected, report } = await replayTrace({
          contract,
          trace,
          contracts,
          triggerEncoding,
          tab3: tab(3),
          traceIndex: i,
          isConforming: false
        });
        // At least one event should be rejected or process not finished
        const end = Number((await contract.tokenState()));
        if (eventsRejected > 0 || end != 0) {
          logDebug(`${tab(3)} ✅ Trace rejected as ${eventsRejected} events rejected or end event (state = ${end}) not reached`);
          rejectedTraces++;
        } else {
          logDebug(`${tab(3)} ❌ Trace not rejected! (${eventsRejected} events rejected, state = ${end}`);
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
        number_negatives: badLog.traces.length,
        gas: totalGasCost,
        compiled: true
      });
    }

    const experimentSummary = {
      name: this.test.name,
      timestamp: new Date().toISOString(),
      model: this.test.model,
      processes: results
    };

    const outDir = path.join("log", "execution", this.test.stamp, );
    if (!fs.existsSync(outDir)) {
      fs.mkdirSync(outDir, { recursive: true });
    }
    const outPath = path.join(outDir, `summary.json`);
    fs.writeFileSync(outPath, JSON.stringify(experimentSummary, null, 2), "utf-8");
    console.log(`${tab(1)}💾 Saved run summary to ${outPath}`);

    const summaryTable = results.map(r => {
      const tp = r.true_positives;
      const tn = r.true_negative;
      const fn = r.number_positives - r.true_positives;
      const fp = r.number_negatives - r.true_negative;

      const precision = tp + fp === 0 ? 0 : tp / (tp + fp);
      const recall = tp + fn === 0 ? 0 : tp / (tp + fn);
      const f1 = precision + recall === 0 ? 0 : (2 * precision * recall) / (precision + recall);

      return {
        "📦 Process": r.process,
        "✅ True Positives": `${tp} / ${r.number_positives}`,
        "❌ False (Accept)Positives": `${fp}`,
        "✅ True Negatives": `${tn} / ${r.number_negatives}`,
        "❌ False (Reject)Negatives": `${fn}`,
        "🎯 F1 Score": f1.toFixed(2)
      };
    });

    for (const r of results) {
      if (r.true_positives < r.number_positives || r.true_negative < r.number_negatives) {
        console.log(`${tab(1)}⚠️ Model "${r.process}" has false positives or false negatives.`);
      }
    }

    console.log("\n" + "=".repeat(60));
    console.log(`${tab(1)}📊 Experiment Summary ${this.test.name}`);
    console.log("=".repeat(60));
    console.table(summaryTable);
    console.log("=".repeat(60) + "\n");

    // At the end, log the total number of replayed traces
    console.log(`${tab(1)}🔢 Total traces replayed: ${totalTracesReplayed}`);
  }
}