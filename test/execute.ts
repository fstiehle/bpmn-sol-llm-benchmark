import fs from 'fs';
import path from 'path';
import { assert, expect } from "chai";
import chorpiler, { TriggerEncoding } from "chorpiler";
import { ethers } from "hardhat";
import { execSync } from "child_process";

import { run} from "../bench.config";
import { TestConfig } from "../src/TestConfig";

const DEBUG = process.env.DEBUG === "1" || process.env.DEBUG === "true";

const xesParser = new chorpiler.utils.XESParser();
const contractDir = "./contracts/chorpiler";
const xesDir = "./xes";

export const capitalize = (name: string): string => {
  return name.charAt(0).toUpperCase() + name.slice(1);
}

const processLogsToSol = (logFolder: string, solFolder: string, prefix="LLM_") => {
  const logFiles = fs.readdirSync(logFolder).filter((file) => file.endsWith(".json"));

  for (const logFile of logFiles) {
    const logFilePath = path.join(logFolder, logFile);
    const logContent = JSON.parse(fs.readFileSync(logFilePath, "utf-8"));

    if (logContent.compiled === false) continue;

    const contractName = `${prefix}${path.basename(logFile, path.extname(logFile))}`;

    if (logContent.output && logContent.processID) {
      const solFilePath = path.join(solFolder, `${logContent.processID}.sol`);
      const header = `// test ${logContent.name} at ${logContent.timestamp}\n`;
      const cleanedSolidity = logContent.output
        .replace(/^```[a-zA-Z]*\n/, "")
        .replace(/\n```$/, "")
        .replace(/\n/g, "\n")
        .replace(/contract\s+\w+\s*{/, `contract ${contractName} {`);
      fs.writeFileSync(solFilePath, header + cleanedSolidity, "utf-8");
      logDebug(`Saved Solidity file to ${solFilePath}`);
    } else {
      console.error(`Log file ${logFile} is missing required fields.`);
    }
  }
};

function logDebug(...args: any[]) {
  if (DEBUG) {
    console.log(...args);
  }
}

const tab = (n: number) => "  ".repeat(n);

const replayTraces = async (solDir: string, test: TestConfig, contractPrefix: string) => {
  const solFiles = fs.readdirSync(solDir).filter(file => file.endsWith('.sol'));

  // Collect results for all files
  const results: { process: string; correct: number; total: number }[] = [];

  for (const file of solFiles) {
    const name = path.basename(file, '.sol');
    console.log(`${tab(1)}🔬 Simulate: ${name} in ${test.name}`);

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
      let contract;
      try {
        contract = await ethers.deployContract(
          `${contractPrefix}${name}`,
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
          const methodToCall = test.multipleFunc ? event.id : "enact";
          if (typeof participant[methodToCall] !== "function") {
            throw new Error(`Method ${methodToCall} does not exist on the contract`);
          }
          if (test.multipleFunc) {
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

        // Log the token state change
        if (postTokenState !== preTokenState) {
          logDebug(`${tab(3)}🔄 Token state changed: ${preTokenState} -> ${postTokenState}`);
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
        console.warn(`${tab(3)}⚠️ End of process not reached! Final token state: ${finalTokenState}`);
      } else {
        logDebug(`${tab(3)}✅ Process completed successfully with token state 0.`);
      }

      // Pretty table for the trace
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

    // Store result for this process
    results.push({
      process: name,
      correct: correctTraceCount,
      total: eventLog.traces.length
    });
  }

  const experimentSummary = {
    name: test.name,
    timestamp: new Date().toISOString(),
    model: test.model,
    gascost: 0,
    processes: results.map(r => ({
      id: r.process,
      correct: r.correct,
      total: r.total,
      rejected: 0,
      not_rejected: 0,
      "execution trace": r }))
  };

  const outDir = path.join("log", "execution", test.stamp, );
  if (!fs.existsSync(outDir)) {
    fs.mkdirSync(outDir, { recursive: true });
  }
  const outPath = path.join(outDir, `summary.json`);
  fs.writeFileSync(outPath, JSON.stringify(experimentSummary, null, 2), "utf-8");
  console.log(`${tab(1)}💾 Saved run summary to ${outPath}`);

  // Improved summary table
  const summaryTable = results.map(r => ({
    "📦 Process": r.process,
    "✅ Correct Traces": r.correct,
    "🔢 Total Traces": r.total,
    "❌ Incorrect": r.total - r.correct
  }));
  console.log(`${tab(1)}Summary:`);
  console.table(summaryTable);
};

describe.skip("Chorpiler", () => {
  execSync("npx hardhat compile", { stdio: "inherit" });

  it(`Replay traces`, async () => {
    const test = new TestConfig({
      name: "Baseline Rule-Based Generation",
      dataSet: "sap-sam",
      promptType: "",
      promptPath: "",
      model: "chorpiler",
      inputFolder: "",
      multipleFunc: false
    });
    await replayTraces(contractDir, test, "comp_");
  });
});

describe("LLM", () => {

  run.forEach(test => {
    it(`test ${test.name}`, async () => {
      console.log(`Execute contracts for ${test.name}`);

      const solFolder = path.join(__dirname, `../contracts/llm/${test.stamp}`);
      if (!fs.existsSync(solFolder)) {
        throw new Error("Source folder doesn't exist yet, did you run 'npm run compile' before?");
      }

      try {
        await replayTraces(solFolder, test, test.slug);
      } catch (error) {
        console.log(error instanceof Error ? error.message : String(error));
      }
    });
  });

});