import * as fs from "fs";
import * as path from "path";

const processLogsToSol = (logFolder: string, solFolder: string) => {
  const logFiles = fs.readdirSync(logFolder).filter((file) => file.endsWith(".json"));

  for (const logFile of logFiles) {
    const logFilePath = path.join(logFolder, logFile);
    const logContent = JSON.parse(fs.readFileSync(logFilePath, "utf-8"));

    const contractName = `LLM_${path.basename(logFile, path.extname(logFile))}`;

    if (logContent.output && logContent.processID) {
      const solFilePath = path.join(solFolder, `${logContent.processID}.sol`);
      const header = `// Created by ${logContent.model} at ${logContent.timestamp}\n`;
      const cleanedSolidity = logContent.output
        .replace(/^```[a-zA-Z]*\n/, "")
        .replace(/\n```$/, "")
        .replace(/\n/g, "\n")
        .replace(/contract\s+\w+\s*{/, `contract ${contractName} {`);
      fs.writeFileSync(solFilePath, header + cleanedSolidity, "utf-8");
      console.log(`Saved Solidity file to ${solFilePath}`);
    } else {
      console.error(`Log file ${logFile} is missing required fields.`);
    }
  }
};

describe("manual: process logs and generate Solidity files for each stamp", () => {

  function writeExecutionLog(logFolder: string, stamp: string, experimentName: string, experimentDescription: string) {
    const logFiles = fs.readdirSync(logFolder).filter((file) => file.endsWith(".json"));
    if (logFiles.length === 0) return;

    // Use the first log file as a representative for metadata
    const logFilePath = path.join(logFolder, logFiles[0]);
    const logContent = JSON.parse(fs.readFileSync(logFilePath, "utf-8"));

    const executionLog = {
      stamp: stamp,
      name: experimentName,
      description: experimentDescription,
      timestamp: logContent.timestamp || new Date().toISOString(),
      model: logContent.model || "",
    };

    const execLogFolder = path.join(__dirname, "../log/execution");
    if (!fs.existsSync(execLogFolder)) {
      fs.mkdirSync(execLogFolder, { recursive: true });
    }
    fs.writeFileSync(
      path.join(execLogFolder, "curr_run.json"),
      JSON.stringify(executionLog, null, 2),
      "utf-8"
    );
  }

  it("processes one-shot logs", () => {
    const stamp = "sap-sam/qwen3-14b/one-shot/last"
    const logFolder = path.join(__dirname, `../log/llm/${stamp}`);
    const solFolder = path.join(__dirname, "../contracts/llm");

    if (!fs.existsSync(logFolder)) {
      throw new Error(`Log folder does not exist: ${logFolder}`);
    }

    if (!fs.existsSync(solFolder)) {
      fs.mkdirSync(solFolder, { recursive: true });
    }

    // Write execution log for this experiment
    writeExecutionLog(logFolder, stamp, "one-shot experiment", "Solidity generation from one-shot logs");

    processLogsToSol(logFolder, solFolder);
  });

  it("processes zero-shot logs", () => {
    const stamp = "sap-sam/qwen3-14b/zero-shot/last"
    const logFolder = path.join(__dirname, `../log/llm/${stamp}`);
    const solFolder = path.join(__dirname, "../contracts/llm");

    if (!fs.existsSync(logFolder)) {
      throw new Error(`Log folder does not exist: ${logFolder}`);
    }

    if (!fs.existsSync(solFolder)) {
      fs.mkdirSync(solFolder, { recursive: true });
    }

    // Write execution log for this experiment
    writeExecutionLog(logFolder, stamp, "zero-shot experiment", "Solidity generation from zero-shot logs");

    processLogsToSol(logFolder, solFolder);
  });
});