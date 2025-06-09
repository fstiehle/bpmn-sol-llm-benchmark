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

export  const DEBUG = process.env.DEBUG === "1" || process.env.DEBUG === "true";
export  const NR_NON_CONFORMING_TRACES = 20;

export  const XES_PARSER = new chorpiler.utils.XESParser();
export  const XES_DIR = "./xes";
export  const ENCODINGS_DIR = "./contracts/chorpiler";

export const ENDPOINT = "https://openrouter.ai/api/v1/chat/completions";
export const SYSTEM_PROMPT = `You are a helpful assistant that generates Solidity smart contracts based on the provided requirements. 
Make sure to follow best practices for Solidity development, including security considerations and gas optimization.`;

//const stamp = new Date().toISOString();
export const stamp = "last";

// -----------------------------------------------
// ONE SHOTs
// ---------------
// BIG MODEL
const gpt_oneShot = new TestConfig({
  name: "GPT 4.1 - One Shot",
  dataSet: "sap-sam",
  promptType: "one-shot",
  model: "gpt-4.1-2025-04-14",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const gpt_revisedShot = new TestConfig({
  name: "GPT 4.1 - One Shot Revised",
  dataSet: "sap-sam",
  promptType: "one-shot/rev",
  model: "gpt-4.1-2025-04-14",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/revised.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const gpt_oneShot_adv = new TestConfig({
  name: "GPT Model - One Shot with advanced example",
  dataSet: "sap-sam",
  promptType: "one-shot/adv",
  model: "gpt-4.1-2025-04-14",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot-adv.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const gpt_twoShot = new TestConfig({
  name: "GPT Model - Two Shot",
  dataSet: "sap-sam",
  promptType: "two-shot",
  model: "gpt-4.1-2025-04-14",
  promptPath: path.join(__dirname, "/prompts/sap-sam/two-shot/two-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_oneShot = new TestConfig({
  name: "large Model - One Shot",
  dataSet: "sap-sam",
  promptType: "one-shot",
  model: "anthropic/claude-3.5-sonnet",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_twoShot = new TestConfig({
  name: "large Model - Two Shot",
  dataSet: "sap-sam",
  promptType: "two-shot",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/two-shot/two-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_threeShot = new TestConfig({
  name: "large Model - Three Shot",
  dataSet: "sap-sam",
  promptType: "three-shot",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/three-shot/three-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_oneShot_adv = new TestConfig({
  name: "large Model - One Shot with advanced example",
  dataSet: "sap-sam",
  promptType: "one-shot/adv",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot-adv.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_oneShot_naive = new TestConfig({
  name: "large Model - One Shot with naive implementation example",
  dataSet: "sap-sam",
  promptType: "one-shot/naive",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot-naive.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_revisedShot = new TestConfig({
  name: "GPT 4.1 - One Shot Revised",
  dataSet: "sap-sam",
  promptType: "one-shot/rev",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/revised.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});

// -----------------------------------------------
// ZERO SHOTs

const test2 = new TestConfig({
  name: "Small Model - Zero Shot",
  dataSet: "sap-sam",
  promptType: "zero-shot",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/zero-shot/zero-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});

const test3 = new TestConfig({
  name: "Small Model - Zero Shot - Multiple Functions",
  dataSet: "sap-sam",
  promptType: "zero-shot/func",
  multipleFunc: true,
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/zero-shot/zero-shot-func.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});

// -----------------------------------------------
// Define which models tasks to run
export const llms: TestConfig[] = [
  l_oneShot
];

// -----------------------------------------------
// Define which benchmark tasks to run
export const run: TestConfig[] = [
  gpt_oneShot, gpt_twoShot, gpt_revisedShot
];