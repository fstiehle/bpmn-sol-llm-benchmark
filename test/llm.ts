import { expect } from "chai";
import * as fs from "fs";
import * as path from "path";
import axios from "axios";
import FormData from "form-data";

import { endpoint, llms} from "../test.config";
import { TestConfig } from "./TestConfig";

const indent = (level: number) => "  ".repeat(level);

const runTest = async (config: TestConfig, endpoint: string) => {
  const tab = indent(1);
  const tab2 = indent(2);
  console.log(`${tab}${config.name}:`);

  // Check if the endpoint is reachable
  try {
    const response = await axios.get(endpoint);
    expect(response.status).to.equal(200);
    console.log(`${tab2}✅ Endpoint is reachable`);
  } catch (error) {
    console.log(`${tab2}❌ Endpoint is not reachable`);
    throw new Error(`Endpoint ${endpoint} is not reachable: ${(error as Error).message}`);
  }

  // Set the model via /select_model
  try {
    const modelResponse = await axios.post(`${endpoint}/select_model`, { technical_name: config.model });
    expect(modelResponse.status).to.equal(200);
    console.log(`${tab2}🤖 Model set to ${config.model}`);
  } catch (error) {
    console.log(`${tab2}❌ Failed to set model`);
    throw new Error(`Failed to set model: ${(error as Error).message}`);
  }

  const prompt = fs.readFileSync(config.promptPath, "utf-8");
  if (typeof prompt !== "string" || prompt.trim() === "") {
    throw new Error("Prompt must be a non-empty string.");
  }

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
    const updatedPrompt = prompt.replace("{{taskIDs}}", JSON.stringify(jsonData.tasks))
      .replace("{{parIDs}}", JSON.stringify(jsonData.participants));

    // Set the prompt via /prompt
    try {
      const promptResponse = await axios.post(`${endpoint}/prompt`, { prompt: updatedPrompt });
      expect(promptResponse.status).to.equal(200);
      console.log(`${tab2}  ✏️ Prompt set`);
    } catch (error) {
      console.log(`${tab2}  ❌ Failed to set prompt`);
      throw new Error(`Failed to set prompt: ${(error as Error).message}`);
    }

    try {
      // Send the file to the /input/ endpoint
      const formData = new FormData();
      const fileBuffer = fs.readFileSync(filePath);
      formData.append("file", fileBuffer, file);

      const inputResponse = await axios.post(`${endpoint}/input/`, formData, {
        headers: {
          ...formData.getHeaders(),
        },
      });
      expect(inputResponse.status).to.equal(200);
      console.log(`${tab2}  ⬆️ File uploaded`);

      // Wait for the /output/ endpoint to process the file
      console.log(`${tab2}  ⏳ Waiting for output`);
      const outputResponse = await axios.get(`${endpoint}/output/`, {
        responseType: "text",
        timeout: 300000, // Allow for a long wait (5 minutes)
      });
      expect(outputResponse.status).to.equal(200);

      // Parse the JSON response to extract the Solidity code
      const outputData = JSON.parse(outputResponse.data);
      const solidityCode = outputData.output;

      // Prepare the JSON output
      const outputJson = {
        name: config.name,
        timestamp: new Date().toISOString(),
        model: config.model,
        prompt: updatedPrompt,
        input: fs.readFileSync(filePath, "utf-8"),
        output: solidityCode,
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
      await runTest(testConfig, endpoint);
    });
  }

});