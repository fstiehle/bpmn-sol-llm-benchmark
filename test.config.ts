import * as path from "path";
import { TestConfig } from "./test/TestConfig";

export const stamp = "last";
export const endpoint = "http://127.0.0.1:8000";
//const stamp = new Date().toISOString();

// -----------------------------------------------
// ONE SHOTs
// ---------------
// SMALL MODEL
const s_oneShot = new TestConfig({
  name: "Small Model - One Shot",
  dataSet: "sap-sam",
  promptType: "one-shot",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const s_oneShotFunc = new TestConfig({
  name: "Small Model - One Shot with Multiple Functions and Easier Example",
  dataSet: "sap-sam",
  promptType: "one-shot/func",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/TODO-one-shot-func.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/"),
  multipleFunc: true
});
const s_oneShotNaiv = new TestConfig({
  name: "Small Model - One Shot with Easier Implementation Example",
  dataSet: "sap-sam",
  promptType: "one-shot/naive",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/TODO-one-shot-naive.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
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
const gpt_oneShot_easier = new TestConfig({
  name: "GPT 4.1 - One Shot with easier example",
  dataSet: "sap-sam",
  promptType: "one-shot/easier",
  model: "gpt-4.1-2025-04-14",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot-easier.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_oneShot = new TestConfig({
  name: "large Model - One Shot",
  dataSet: "sap-sam",
  promptType: "one-shot",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/")
});
const l_oneShot_easier = new TestConfig({
  name: "large Model - One Shot with easier example",
  dataSet: "sap-sam",
  promptType: "one-shot/easier",
  model: "qwen3-235b-a22b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/one-shot-easier.txt"),
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

export const llms: TestConfig[] = [gpt_oneShot, gpt_oneShot_easier, l_oneShot];
export const run: TestConfig[] = [gpt_oneShot, gpt_oneShot_easier];