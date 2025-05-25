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
      fs.writeFileSync(solFilePath, 
        logContent.output
        .replace(/^```[a-zA-Z]*\n/, "")
        .replace(/\n```$/, "")
        .replace(/\n/g, "\n")
        .replace(/contract\s+\w+\s*{/, `contract ${contractName} {`),
      "utf-8");
      console.log(`Saved Solidity file to ${solFilePath}`);
    } else {
      console.error(`Log file ${logFile} is missing required fields.`);
    }
  }
};

describe("should process logs and generate Solidity files", () => {
  const stamp = "last"; // last stamp to use for pulling contracts from the log
  const logFolder = path.join(__dirname, `../log/llm/sap-sam/qwen3-14b/${stamp}`);
  const solFolder = path.join(__dirname, "../contracts/llm");

  // Ensure the log folder exists
  if (!fs.existsSync(logFolder)) {
    console.error(`Log folder does not exist: ${logFolder}`);
    return;
  }

  // Ensure the Solidity folder exists or create it
  if (!fs.existsSync(solFolder)) {
    fs.mkdirSync(solFolder, { recursive: true });
    console.log(`Created Solidity folder: ${solFolder}`);
  }

  processLogsToSol(logFolder, solFolder);
});