import * as fs from "fs";
import * as path from "path";
import { llms, NR_PROCESS_MODELS } from "../bench.config";
import { TestConfig } from "../src/TestConfig";
import { LLMProvider } from "../src/LLMProvider";

const indent = (level: number) => "  ".repeat(level);

const runTest = async (config: TestConfig) => {
  const tab = indent(1);
  const tab2 = indent(2);
  const tab3 = indent(3);
  console.log(`${tab}${config.name}:`);

  // Prepare LLMProvider instance
  const llm = new LLMProvider();

  if (fs.existsSync(config.outputFolder)) {
    console.log(`${tab2} Folder already exists, re-trying failed requests. ${config.outputFolder}`);
  }

  // Limit the number of process models if NR_PROCESS_MODELS is set to a number
  // Process all or NR_PROCESS_MODELS .bpmn files in the input folder
  let files = fs.readdirSync(config.inputFolder).filter((file) => file.endsWith(".bpmn"));
  if (typeof NR_PROCESS_MODELS === "number") {
    files = files.slice(0, NR_PROCESS_MODELS);
  }

  for (const file of files) {
    console.log(`${tab2}📄 ${file}:`)
    const fileNameWithoutExt = path.basename(file, ".bpmn");
    const outputFilePath = path.join(config.outputFolder, `${fileNameWithoutExt}.json`);
    // If the output file exists and its output is null, delete the file
    if (fs.existsSync(outputFilePath)) {
      const existing = JSON.parse(fs.readFileSync(outputFilePath, "utf-8"));
      if (existing.output == null) {
        fs.unlinkSync(outputFilePath);
        console.log(`${tab3} 🗑️ Deleted file with null output: ${path.basename(outputFilePath)}`);
      }
    }

    if (fs.existsSync(outputFilePath)) {
      console.log(`${tab3} ⚠️ Output already exists, skipping: ${path.basename(outputFilePath)}`);
      continue;
    }
    const filePath = path.join(config.inputFolder, file);

    // Read the corresponding .json file from contracts/chorpiler
    const jsonFilePath = path.join(__dirname, "../contracts/chorpiler", `${fileNameWithoutExt}.json`);
    if (!fs.existsSync(jsonFilePath)) {
      console.log(`${tab3} JSON encoding file not found: ${path.basename(jsonFilePath)}, skipping`);
      continue;
    }

    const jsonData = JSON.parse(fs.readFileSync(jsonFilePath, "utf-8"));
    if (!jsonData) {
      console.log(`${tab2} ❌ Missing encoding: ${jsonFilePath}`);
      throw new Error(`Missing encoding: ${jsonFilePath}`);
    }

    // Replace the string {{encoding}} in the prompt with the encoding from the JSON file
    const promptTemplate = fs.readFileSync(config.promptPath, "utf-8");
    const updatedPrompt = promptTemplate.replace("{{taskIDs}}", JSON.stringify(jsonData.tasks))
      .replace("{{parIDs}}", JSON.stringify(jsonData.participants));

    try {
      // Directly call the LLMProvider with prompt and input
      const inputText = fs.readFileSync(filePath, "utf-8");
      console.log(`${tab2} Calling provider...`);
      const result = await llm.generate({
        process: inputText,
        prompt: updatedPrompt,
        model: config.model,
        temperature: config.temperature ?? 0,
      });

      let compiled = true;
      if (!(result && typeof result.smart_contract === "string" && result.smart_contract.length > 0)) {
        compiled = false;
        console.log(`${tab2} ❌ LLM output validation failed: smart_contract is missing or invalid`);
      } else {
        console.log(`${tab2}  🤖 LLM call successful`);
        console.log(result.usage);
      }

      // Prepare the JSON output
      const outputJson = {
        name: config.name,
        processID: fileNameWithoutExt,
        timestamp: new Date().toISOString(),
        model: config.model,
        compiled,
        usage: {
          prompt_tokens: result.usage?.prompt_tokens,
          completion_tokens: result.usage?.completion_tokens,
          total_tokens: result.usage?.total_tokens,
          cost: result.usage?.cost,
        },
        prompt: updatedPrompt,
        input: inputText,
        output: result.smart_contract,
      };

      // Write the JSON output to the specified output folder
      const outputFilePath = path.join(config.outputFolder, `${fileNameWithoutExt}.json`);
      if (!fs.existsSync(config.outputFolder)) {
        fs.mkdirSync(config.outputFolder, { recursive: true });
      }
      fs.writeFileSync(outputFilePath, JSON.stringify(outputJson, null, 2), "utf-8");
      console.log(`${tab2} 💾 Saved output to ${outputFilePath}`);
    } catch (error) {
      console.log(`${tab2} ❌ Error processing ${file}: ${(error as Error).message}`);
    }
  }
};

describe("LLM Endpoint Tests", () => {
  console.log("The following LLMs are configured:");
  llms.forEach(config => {
    console.log(`- ${config.name} (Prompt: ${config.promptPath})`);
  });

  console.log(`\nRunning for ${NR_PROCESS_MODELS} files each.`);

  for (const testConfig of llms) {
    it(`should run: ${testConfig.name}`, async () => {
      await runTest(testConfig);
    });
  }
});