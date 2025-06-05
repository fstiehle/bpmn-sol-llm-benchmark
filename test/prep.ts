import fs from 'fs';
import path from 'path';
import { execSync } from "child_process";

import { run} from "../test.config";

const DEBUG = process.env.DEBUG === "1" || process.env.DEBUG === "true";

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

describe("LLM", () => {
  execSync("npm run clean-llm", { stdio: "inherit" });
  run.forEach(test => {
    it(`test ${test.name}`, async () => {
      console.log(`Prep contracts for ${test.name}`);

      const solFolder = path.join(__dirname, `../contracts/llm/${test.stamp}`);
      if (!fs.existsSync(solFolder)) {
        fs.mkdirSync(solFolder, { recursive: true });
      }

      processLogsToSol(test.outputFolder, solFolder, test.slug);

    });
  });
});