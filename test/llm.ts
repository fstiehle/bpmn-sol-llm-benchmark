import { expect } from "chai";
import * as fs from "fs";
import * as path from "path";
import axios from "axios";
import FormData from "form-data";

interface TestConfig {
  name: string;
  description: string;
  model: string;
  promptPath: string;
  inputFolder: string;
  outputFolder: string;
}

const runTest = async (config: TestConfig, endpoint: string) => {
  console.log(`Running test: ${config.name}`);
  console.log(`Description: ${config.description}`);

  // Check if the endpoint is reachable
  try {
    const response = await axios.get(endpoint);
    expect(response.status).to.equal(200);
    console.log("Endpoint is reachable.");
  } catch (error) {
    throw new Error(`Endpoint ${endpoint} is not reachable: ${(error as Error).message}`);
  }

  // Set the model via /select_model
  try {
    const modelResponse = await axios.post(`${endpoint}/select_model`, { technical_name: config.model });
    expect(modelResponse.status).to.equal(200);
    console.log(`Model set to ${config.model}`);
  } catch (error) {
    throw new Error(`Failed to set model: ${(error as Error).message}`);
  }

  const prompt = fs.readFileSync(config.promptPath, "utf-8");
  if (typeof prompt !== "string" || prompt.trim() === "") {
    throw new Error("Prompt must be a non-empty string.");
  }

  // Process all .bpmn files in the input folder
  const files = fs.readdirSync(config.inputFolder).filter((file) => file.endsWith(".bpmn"));

  for (const file of files) {
    const filePath = path.join(config.inputFolder, file);
    const fileNameWithoutExt = path.basename(file, ".bpmn");

    // Read the corresponding .json file from contracts/chorpiler
    const jsonFilePath = path.join(__dirname, "../contracts/chorpiler", `${fileNameWithoutExt}.json`);
    if (!fs.existsSync(jsonFilePath)) {
      throw new Error(`JSON config file not found: ${jsonFilePath}`);
    }

    const jsonData = JSON.parse(fs.readFileSync(jsonFilePath, "utf-8"));
    if (!jsonData) {
      throw new Error(`Missing encoding: ${jsonFilePath}`);
    }

    // Replace the string {{encoding}} in the prompt with the encoding from the JSON file
    const updatedPrompt = prompt.replace("{{taskIDs}}", JSON.stringify(jsonData.tasks))
      .replace("{{parIDs}}", JSON.stringify(jsonData.participants));

    // Set the prompt via /prompt
    try {
      const promptResponse = await axios.post(`${endpoint}/prompt`, { prompt: updatedPrompt });
      expect(promptResponse.status).to.equal(200);
      console.log("Prompt set successfully.");
    } catch (error) {
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

      // Wait for the /output/ endpoint to process the file
      console.log(`Waiting for output of ${file}`);
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
        description: config.description,
        timestamp: new Date().toISOString(),
        model: config.model,
        prompt: updatedPrompt,
        input: fs.readFileSync(filePath, "utf-8"),
        output: solidityCode,
        processID: fileNameWithoutExt,
      };

      // Write the JSON output to the specified output folder
      const outputFilePath = path.join(config.outputFolder, `${fileNameWithoutExt}.json`);
      if (!fs.existsSync(config.outputFolder)) {
        fs.mkdirSync(config.outputFolder, { recursive: true });
      }
      fs.writeFileSync(outputFilePath, JSON.stringify(outputJson, null, 2), "utf-8");
      console.log(`Saved output to ${outputFilePath}`);
    } catch (error) {
      console.error(`Error processing ${file}: ${(error as Error).message}`);
    }
  }
};

describe("LLM Endpoint Tests", () => {

  const endpoint = "http://127.0.0.1:8000";
  //const stamp = new Date().toISOString();
  const stamp = "last";

  const tests: TestConfig[] = [
    {
      name: "Test 1",
      description: "This is the first test.",
      model: "qwen3-14b",
      promptPath: path.join(__dirname, "../prompts/sap-sam/naive.txt"),
      inputFolder: path.join(__dirname, "../data/sap-sam/"),
      outputFolder: path.join(__dirname, `../log/llm/sap-sam/qwen3-14b/${stamp}`),
    }
  ];

  for (const testConfig of tests) {
    it(`should run ${testConfig.name}`, async () => {
      await runTest(testConfig, endpoint);
    });
  }
  
});