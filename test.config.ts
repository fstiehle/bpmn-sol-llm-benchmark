import * as path from "path";

const stamp = "last";

export class TestConfig {
  name: string;
  dataSet: string;
  promptType: string;
  promptPath: string;
  model: string;
  inputFolder: string;
  outputFolder: string;
  multipleFunc: boolean = false;

  constructor(params: {
    name: string;
    dataSet: string;
    promptType: string;
    promptPath: string;
    model: string;
    inputFolder: string;
    outputFolder: string;
    multipleFunc?: boolean;
  }) {
    this.name = params.name;
    this.dataSet = params.dataSet;
    this.promptType = params.promptType;
    this.promptPath = params.promptPath;
    this.model = params.model;
    this.inputFolder = params.inputFolder;
    this.outputFolder = params.outputFolder;
    this.multipleFunc = params.multipleFunc ?? false;
  }

  stamp = () => `${this.dataSet}/${this.model}/${this.promptType}/${stamp}`;
}

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
  inputFolder: path.join(__dirname, "/data/sap-sam/"),
  outputFolder: path.join(__dirname, `/log/llm/sap-sam/qwen3-14b/one-shot/${stamp}`)
});
const s_oneShotFunc = new TestConfig({
  name: "Small Model - One Shot with Multiple Functions and Easier Example",
  dataSet: "sap-sam",
  promptType: "one-shot/func",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/TODO-one-shot-func.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/"),
  outputFolder: path.join(__dirname, `/log/llm/sap-sam/qwen3-14b/one-shot/func/${stamp}`),
  multipleFunc: true
});
const s_oneShotNaiv = new TestConfig({
  name: "Small Model - One Shot with Easier Implementation Example",
  dataSet: "sap-sam",
  promptType: "one-shot/naive",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/one-shot/TODO-one-shot-naive.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/"),
  outputFolder: path.join(__dirname, `/log/llm/sap-sam/qwen3-14b/one-shot/naive/${stamp}`)
});
// ---------------
// BIG MODEL

// -----------------------------------------------
// ZERO SHOTs

const test2 = new TestConfig({
  name: "Small Model - Zero Shot",
  dataSet: "sap-sam",
  promptType: "zero-shot",
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/zero-shot/zero-shot.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/"),
  outputFolder: path.join(__dirname, `/log/llm/sap-sam/qwen3-14b/zero-shot/${stamp}`)
});

const test3 = new TestConfig({
  name: "Small Model - Zero Shot - Multiple Functions",
  dataSet: "sap-sam",
  promptType: "zero-shot/func",
  multipleFunc: true,
  model: "qwen3-14b",
  promptPath: path.join(__dirname, "/prompts/sap-sam/zero-shot/zero-shot-func.txt"),
  inputFolder: path.join(__dirname, "/data/sap-sam/"),
  outputFolder: path.join(__dirname, `/log/llm/sap-sam/qwen3-14b/zero-shot/func/${stamp}`)
});

export const tests: TestConfig[] = [s_oneShot, s_oneShotFunc, s_oneShotNaiv];
export const run: TestConfig[] = [s_oneShot, s_oneShotFunc, s_oneShotNaiv];