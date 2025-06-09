import { expect } from "chai";
import * as fs from "fs";
import * as path from "path";
import { llms } from "../bench.config";
import { TestConfig } from "../src/TestConfig";
import { LLMProvider } from "../src/LLMProvider"; // <-- Use the provider class

const indent = (level: number) => "  ".repeat(level);

const runTest = async (config: TestConfig) => {
  const tab = indent(1);
  const tab2 = indent(2);
  console.log(`${tab}${config.name}:`);

  // Prepare LLMProvider instance
  const llm = new LLMProvider();

  if (fs.existsSync(config.outputFolder)) {
    fs.rmSync(config.outputFolder, { recursive: true, force: true });
    console.log(`${tab2}🗑️ Deleted existing output folder: ${config.outputFolder}`);
  }

  // Process all .bpmn files in the input folder
  const files = fs.readdirSync(config.inputFolder).filter((file) => file.endsWith(".bpmn"));

  for (const file of files) {
    const filePath = path.join(config.inputFolder, file);
    const fileNameWithoutExt = path.basename(file, ".bpmn");
    console.log(`${tab2}📄 ${file}:`);

    // Read the corresponding .json file from contracts/chorpiler
    const jsonFilePath = path.join(__dirname, "../contracts/chorpiler", `${fileNameWithoutExt}.json`);
    if (!fs.existsSync(jsonFilePath)) {
      console.log(`${tab2}  ❌ JSON config file not found: ${jsonFilePath}`);
      throw new Error(`JSON config file not found: ${jsonFilePath}`);
    }

    const jsonData = JSON.parse(fs.readFileSync(jsonFilePath, "utf-8"));
    if (!jsonData) {
      console.log(`${tab2}  ❌ Missing encoding: ${jsonFilePath}`);
      throw new Error(`Missing encoding: ${jsonFilePath}`);
    }

    // Replace the string {{encoding}} in the prompt with the encoding from the JSON file
    const promptTemplate = fs.readFileSync(config.promptPath, "utf-8");
    const updatedPrompt = promptTemplate.replace("{{taskIDs}}", JSON.stringify(jsonData.tasks))
      .replace("{{parIDs}}", JSON.stringify(jsonData.participants));

    try {
      // Directly call the LLMProvider with prompt and input
      const inputText = fs.readFileSync(filePath, "utf-8");
      const result = await llm.generate({
        process: inputText,
        prompt: updatedPrompt,
        model: config.model,
        temperature: config.temperature ?? 0.7,
      });

      expect(result && typeof result.smart_contract === "string" && result.smart_contract.length > 0).to.be.true;
      console.log(`${tab2}  🤖 LLM call successful`);
      console.log(result.usage);

      // Prepare the JSON output
      const outputJson = {
        name: config.name,
        timestamp: new Date().toISOString(),
        model: config.model,
        prompt: updatedPrompt,
        input: inputText,
        output: result.smart_contract,
        processID: fileNameWithoutExt,
        compiled: true // can later be set to false
      };

      // Write the JSON output to the specified output folder
      const outputFilePath = path.join(config.outputFolder, `${fileNameWithoutExt}.json`);
      if (!fs.existsSync(config.outputFolder)) {
        fs.mkdirSync(config.outputFolder, { recursive: true });
      }
      fs.writeFileSync(outputFilePath, JSON.stringify(outputJson, null, 2), "utf-8");
      console.log(`${tab2}  💾 Saved output to ${outputFilePath}`);
    } catch (error) {
      console.log(`${tab2}  ❌ Error processing ${file}: ${(error as Error).message}`);
    }
  }
};

describe("LLM Endpoint Tests", () => {
  for (const testConfig of llms) {
    it(`should run: ${testConfig.name}`, async () => {
      await runTest(testConfig);
    });
  }
});