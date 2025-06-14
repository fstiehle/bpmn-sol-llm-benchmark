/**
 * @file bench.config.ts
 * @description
 * This configuration file defines various test scenarios for benchmarking different large language models (LLMs) on the "sap-sam" dataset.
 * It exports constants and arrays of `TestConfig` instances, each representing a specific prompt type, model, and configuration for running
 *
 * @module bench.config
 */
import * as path from "path";
import chorpiler from "chorpiler";
import { TestConfig } from "./src/TestConfig";
import * as dotenv from "dotenv";

dotenv.config();

export const DEBUG =
  process.env.DEBUG === "1" || process.env.DEBUG === "true";

export const STAMP = "last"; // identifier of the current experiment used throughout benchmark

// Number of non-conforming traces to generate and replay
export const NR_NON_CONFORMING_TRACES = 50;

// only take the first 20 process models from data
// good for pre-testing
export const NR_PROCESS_MODELS: number | "all" = 200;

export const XES_PARSER = new chorpiler.utils.XESParser();
export const XES_DIR = "./xes";
export const ENCODINGS_DIR = "./contracts/chorpiler";

export const ENDPOINT =
  "https://openrouter.ai/api/v1/chat/completions";

export const SYSTEM_PROMPT = `You are a helpful assistant that generates Solidity (version 0.8.9) smart contracts based on the provided requirements. 
Make sure to follow best practices for Solidity development, including security considerations and gas optimization.`;

// -----------------------------------------------
// TESTS
// List of model names
export const modelNames = [
  "openai/gpt-4.1",
  "anthropic/claude-sonnet-4",
  //"google/gemini-2.5-pro-preview-05-06", unable to turn off reasoning output
  "x-ai/grok-3-beta",
  "meta-llama/llama-3.3-70b-instruct",
  "meta-llama/llama-3.1-405b-instruct",
  "qwen/qwen3-235b-a22b",
  "deepseek/deepseek-chat-v3-0324"
];

// List of prompt paths to use for all models
export const promptPaths: string[] = [
  path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot.txt"),
  //path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot-naive.txt"),
  path.join(__dirname, "/prompts/sap-sam/two-shot/two-shot.txt"),
  // Add more prompt paths here as needed
];

// Create TestConfig for each model and each promptPath
export const modelTestConfigs: TestConfig[] = modelNames.flatMap(model =>
  promptPaths.map(promptPath =>
    new TestConfig({
      name: `${model} - ${path.basename(promptPath, ".txt")}`,
      dataSet: "sap-sam",
      promptType: path.basename(promptPath, ".txt"),
      model,
      promptPath,
      inputFolder: path.join(__dirname, "/data/sap-sam/")
    })
  )
);

// -----------------------------------------------
// Define which llms to request
export const llms: TestConfig[] = [
  ...modelTestConfigs
];

// -----------------------------------------------
// Define which benchmarks to run
export const run: TestConfig[] = [
  ...modelTestConfigs.slice(8, 12)
];