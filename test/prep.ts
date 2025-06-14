import fs from 'fs';
import path from 'path';
import { execSync } from "child_process";

import { DEBUG, run, STAMP } from "../bench.config";

export const capitalize = (name: string): string => {
  return name.charAt(0).toUpperCase() + name.slice(1);
}

export const escapeCsv = (value: string | undefined | null): string => {
  if (!value) return '""';
  return `"${String(value).replace(/"/g, '""')}"`;
}

const csvPath = path.join(path.join(__dirname, `../log/execution/sap-sam/${STAMP}`), "not_compiled.csv");

const processLogsToSol = (logFolder: string, solFolder: string, prefix="LLM_") => {
  console.log(logFolder)
  const logFiles = fs.readdirSync(logFolder).filter((file) => file.endsWith(".json"));

  for (const logFile of logFiles) {
    const logFilePath = path.join(logFolder, logFile);
    const logContent = JSON.parse(fs.readFileSync(logFilePath, "utf-8"));

    if (logContent.compiled === false) {
      console.log(`Skipping ${logFile} because it was marked to not compile.`);
      const csvLine = [
        escapeCsv(logFile),
        escapeCsv(logContent.name),
        escapeCsv(logContent.processID)
      ].join(",") + "\n";
      fs.appendFileSync(csvPath, csvLine, "utf-8");
      continue;
    }

    const contractName = `${prefix}${path.basename(logFile, path.extname(logFile))}`;

    if (logContent.output && logContent.processID) {
      const solFilePath = path.join(solFolder, `${logContent.processID}.sol`);
      const header = `// test ${logContent.name} at ${logContent.timestamp}\n`;
      const cleanedSolidity = logContent.output
        .replace(/^[\s\S]*?```solidity\n/, "") // Remove everything before ```solidity\n
        .replace(/```solidity/g, "") // Remove all occurrences of ```solidity
        .replace(/```[\s\S]*$/, "") // Remove everything after the first closing triple backtick, including it
        .replace(/^```[a-zA-Z]*\n/, "")
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

  // Always initialize not_compiled.csv as empty at the start of processing
  // Create the directory for csvPath if it does not exist
  const csvDir = path.dirname(csvPath);
  if (!fs.existsSync(csvDir)) {
    fs.mkdirSync(csvDir, { recursive: true });
  }
  fs.writeFileSync(csvPath, '', 'utf-8');
  console.log(`Initialized not_compiled.csv at ${csvPath}`);

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