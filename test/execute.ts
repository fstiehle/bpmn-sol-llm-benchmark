import fs from 'fs';
import path from 'path';
import { execSync } from "child_process";
import { ENCODINGS_DIR, run } from "../bench.config";
import { TestConfig } from "../src/TestConfig";
import { TraceReplayer } from '../src/TraceReplayer';

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
    const replayer = new TraceReplayer(ENCODINGS_DIR, test, "comp_");
    await replayer.replay();
  });
});

describe("LLM", () => {
  console.log("The following benchmarks will run:");
  run.forEach(config => {
    console.log(`- ${config.name} (Prompt: ${config.promptPath})`);
  });

  run.forEach(test => {
    it(`test ${test.name}`, async () => {
      console.log(`Execute contracts for ${test.name}`);
      const solFolder = path.join(__dirname, `../contracts/llm/${test.stamp}`);
      if (!fs.existsSync(solFolder)) {
        throw new Error("Source folder doesn't exist yet, did you run 'npm run compile' before?");
      }
      try {
        const replayer = new TraceReplayer(solFolder, test, test.slug);
        await replayer.replay();
      } catch (error) {
        console.log(error instanceof Error ? error.message : String(error));
      }
    });
  });
});