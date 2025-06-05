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
  model: "qwen3-235b-a22b",
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

export const llms: TestConfig[] = [gpt_oneShot, gpt_twoShot, gpt_revisedShot, l_oneShot, l_twoShot, l_revisedShot];
export const run: TestConfig[] = [gpt_oneShot, gpt_twoShot, gpt_revisedShot, l_oneShot, l_twoShot, l_revisedShot];