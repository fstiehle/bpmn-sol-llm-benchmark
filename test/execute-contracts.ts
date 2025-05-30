import fs from 'fs';
import path from 'path';
import { assert, expect } from "chai";
import chorpiler, { TriggerEncoding } from "chorpiler";
import { ethers } from "hardhat";

describe("Simulator", () => {
  const xesParser = new chorpiler.utils.XESParser();
  const contractDir = "./contracts/chorpiler";
  const xesDir = "./xes";

  const replayTraces = async (solDir: string, contractPrefix: string) => {
    const solFiles = fs.readdirSync(solDir).filter(file => file.endsWith('.sol'));

    // Collect results for all files
    const results: { process: string; correct: number; total: number }[] = [];

    // Load curr_run.json ONCE at the beginning
    const currRunPath = path.join("log", "execution", "curr_run.json");
    let currRun: any = null;
    if (fs.existsSync(currRunPath)) {
      currRun = JSON.parse(fs.readFileSync(currRunPath, "utf-8"));
    } else {
      console.warn("curr_run.json not found, skipping summary save.");
    }

    for (const file of solFiles) {
      const name = path.basename(file, '.sol');
      console.log("\t", "Simulate:", name);

      const eventLog = await xesParser.fromXML(
        fs.readFileSync(path.join(xesDir, name + '.xes'))
      );

      const triggerEncodingData = JSON.parse(
        fs.readFileSync(path.join(contractDir, name + '.json'), 'utf-8')
      );
      const triggerEncoding = TriggerEncoding.fromJSON(triggerEncodingData);

      const wallets = (await ethers.getSigners())
        .slice(0, triggerEncoding.participants.size);

      let correctTraceCount = 0;

      // replay log
      for (const [i, trace] of eventLog.traces.entries()) {
        // deploy
        const contract = await ethers.deployContract(
          `${contractPrefix}${name}`,
          [[...wallets.values()].map(v => v.address)]
        );

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

        console.log("\t", "Replay Conforming Trace:", i);
        let allTokenStatesChanged = true;

        for (const event of trace) {
          if (event.dataChange && event.dataChange.length > 0) {
            for (const el of event.dataChange) {
              const preConditionState = await contract.conditions();
              const methodName = "set" + el.variable;
              if (typeof contract[methodName] === "function") {
                let updatedState = Number(preConditionState);
                updatedState |= Number(el.val);
                //console.debug("\t\t", 'Try:', "SetCondition", updatedState);
                await (await contract[methodName](updatedState)).wait(1);
              } else {
                throw new Error(`Method ${methodName} does not exist on the contract`);
              }
            }
          }

          const participant = contracts.get(event.source);
          const taskID = triggerEncoding.tasks.get(event.id);
          assert(participant && taskID, `source (participant) '${event.source}' for event '${event.name}' not found`);

          const preTokenState = await contract.tokenState();
          //console.debug("\t\t", 'Try:', 'TaskID:', taskID, `"${event.name}"`);
            let postTokenState;
            try {
              await (await participant.enact(taskID)).wait(1);
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
                error: (error instanceof Error ? error.message : String(error)).slice(0, 15)
              });
              console.debug(error instanceof Error ? error.message : String(error));
              allTokenStatesChanged = false;
              continue;
            }

          // Log the token state change
          if (postTokenState !== preTokenState) {
            //console.log("\t\t", `Token state changed: ${preTokenState} -> ${postTokenState}`);
          } else {
            allTokenStatesChanged = false;
          }

          // Collect data for the report
          report.push({
            traceIndex: i,
            eventName: event.name,
            taskID,
            preTokenState: preTokenState.toString(),
            postTokenState: postTokenState.toString(),
            tokenStateChanged: postTokenState !== preTokenState
          });
        }

        // Log the final token state at the end of the trace
        const finalTokenState = await contract.tokenState();
        if (Number(finalTokenState) !== 0) {
          console.warn(
            `\tEnd of process not reached! Final token state: ${finalTokenState}`
          );
        } else {
          //console.log("\tProcess completed successfully with token state 0.");
        }

        // Generate and log the report for the trace
        //console.log("\t", "Trace Report:");
        console.table(
          report.map(({ traceIndex, ...rest }) => rest),
          [
            "eventName",
            "taskID",
            "preTokenState",
            "postTokenState",
            "tokenStateChanged",
            "error"
          ]
        );

        if (allTokenStatesChanged) {
          correctTraceCount++;
        }
      }

      // Store result for this process
      results.push({
        process: name,
        correct: correctTraceCount,
        total: eventLog.traces.length
      });
    }

    // Output summary table after all files
    console.log("\nSummary of correctly replayed traces per process:");
    console.table(
      results.map(r => ({
        Process: r.process,
        "Correct Traces": r.correct,
        "Total Traces": r.total
      }))
    );

    // Save to new file under curr_run.stamp (if currRun loaded and has stamp)
    if (currRun && currRun.stamp) {
      // Prepare the new JSON structure
      const experimentSummary = {
      name: currRun.name || "experiment name",
      description: currRun.description || "",
      timestamp: currRun.timestamp || new Date().toISOString(),
      model: currRun.model || "chorpiler",
      gascost: currRun.gascost || 0,
      processes: results.map(r => ({
        id: r.process,
        correct: r.correct,
        total: r.total,
        rejected: 0,
        not_rejected: 0,
        "execution trace": r // You may want to expand this with more detailed trace info if available
      }))
      };

      const outDir = path.join("log", "execution", currRun.stamp);
      if (!fs.existsSync(outDir)) {
        fs.mkdirSync(outDir, { recursive: true });
      }
      const outPath = path.join(outDir, `summary.json`);
      fs.writeFileSync(outPath, JSON.stringify(experimentSummary, null, 2), "utf-8");
      console.log(`Saved run summary to ${outPath}`);
    } else if (currRun) {
      console.warn("curr_run.stamp is missing, not saving summary.");
    }
  };

  describe("Chorpiler", () => {
    it(`Replay traces`, async () => {
      await replayTraces(contractDir, "comp_");
    });
  });

  describe("LLM", () => {
    it(`Replay traces`, async () => {
      await replayTraces("./contracts/llm", "LLM_");
    });
  });
});