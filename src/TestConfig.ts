import { stamp } from "../bench.config";
import * as path from "path";

export class TestConfig {
  name: string;
  dataSet: string;
  promptType: string;
  promptPath: string;
  model: string;
  inputFolder: string;
  stamp: string;
  outputFolder: string;
  slug: string;
  multipleFunc: boolean = false;
  temperature: number = 0.7; 

  constructor(params: {
    name: string;
    dataSet: string;
    promptType: string;
    promptPath: string;
    model: string;
    inputFolder: string;
    stamp?: string;
    outputFolder?: string;
    slug?: string;
    multipleFunc?: boolean;
    temperature?: number;
  }) {
    this.name = params.name;
    this.dataSet = params.dataSet;
    this.promptType = params.promptType;
    this.promptPath = params.promptPath;
    this.model = params.model;
    this.inputFolder = params.inputFolder;
    this.multipleFunc = params.multipleFunc ?? false;
    this.temperature = params.temperature ?? 0.7;
    this.stamp = params.stamp ?? `${this.dataSet}/${this.model}/${this.promptType}/${stamp}`;
    this.outputFolder = params.outputFolder ?? path.join(process.cwd(), `/log/llm/${this.stamp}`);
    this.slug = params.slug ?? `${this.model}_${this.promptType}_`.replace(/[^a-zA-Z0-9]/g, '_');
  }
}