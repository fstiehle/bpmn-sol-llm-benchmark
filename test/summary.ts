import fs from 'fs';
import path from 'path';
import { STAMP } from '../bench.config';

type Summary = {
  name: string;
  timestamp: string;
  model: string;
  gascost: number;
  processes: any[];
};

type UsageEntry = {
  name: string;
  usages: Array<{
    processID: string;
    usage: any;
  }>;
};

function walk(dir: string, jsonOnly: boolean = false): string[] {
  let results: string[] = [];
  if (!fs.existsSync(dir)) return results;
  const list = fs.readdirSync(dir);
  for (const file of list) {
    const filePath = path.join(dir, file);
    const stat = fs.statSync(filePath);
    if (stat && stat.isDirectory()) {
      results = results.concat(walk(filePath, jsonOnly));
    } else if (file.endsWith('.json')) {
      results.push(filePath);
    }
  }
  return results;
}

describe('summary', () => {
  it('should merge all summary.json files in log/execution/sap-sam/last/one-shot and two-shot (including subfolders)', () => {
    const baseFolders = [
      path.join(__dirname, `../log/execution/sap-sam/${STAMP}/one-shot`),
      path.join(__dirname, `../log/execution/sap-sam/${STAMP}/two-shot`),
      //path.join(__dirname, `../log/execution/sap-sam/${STAMP}/chorpiler`), 
    ];
    // Collect and merge
    const merged: Record<string, Summary> = {};
    for (const folder of baseFolders) {
      const summaryFiles = walk(folder);
      for (const filePath of summaryFiles) {
        try {
          const content: Summary = JSON.parse(fs.readFileSync(filePath, 'utf-8'));
          if (!merged[content.name]) {
            merged[content.name] = { ...content, processes: [...content.processes] };
          } else {
            merged[content.name].processes.push(...content.processes);
          }
        } catch (e) {
          console.error(`Failed to parse ${filePath}:`, e);
        }
      }
    }
    // Add not compiled entries as zero-traces
    const notCompiledPath = path.join(__dirname, `../log/execution/sap-sam/${STAMP}/not_compiled.csv`);
    if (!fs.existsSync(notCompiledPath)) {
      console.log('No not_compiled.csv found at', notCompiledPath);
    } else {
      const notCompiledLines = fs.readFileSync(notCompiledPath, 'utf-8')
        .split(/\r?\n/)
        .filter(line => line.trim() && !line.trim().startsWith('//'));
      for (const line of notCompiledLines) {
        const [jsonFile, modelAndPrompt, processId] = line.split(',').map(s => s.replace(/^"|"$/g, ''));
        // modelAndPrompt: "meta-llama/llama-3.3-70b-instruct - one-shot-naive"
        // processId: "sid_013a683b_d99f_4e2b_9a44_a2ab7b15edff"
        const modelName = modelAndPrompt.split(' - ')[0];
        const promptType = modelAndPrompt.split(' - ')[1];
        const name = `${modelName} - ${promptType}`;
        // Find or create merged entry
        if (!merged[name]) {
          throw new Error(`No merged summary entry found for name: ${name} (from not_compiled.csv)`);
        }
        merged[name].processes.push({
          compiled: false,
          process: processId,
          true_positives: 0,
          number_positives: 0,
          true_negative: 0,
          number_negatives: 0
        });
      }
    }
    // Save merged result
    const mergedArr = Object.values(merged);
    const outPath = path.join(__dirname, `../log/execution/sap-sam/${STAMP}/merged_summary.json`);
    fs.writeFileSync(outPath, JSON.stringify(mergedArr, null, 2), 'utf-8');
    console.log(`Merged summary saved to ${outPath}`);
  });
});

describe('llm usage summary', () => {
  it('should merge all JSON files in log/llm/sap-sam/${STAMP}/one-shot and two-shot (including subfolders) and join on name', () => {
    const baseFolders = [
      path.join(__dirname, `../log/llm/sap-sam/${STAMP}/one-shot`),
      path.join(__dirname, `../log/llm/sap-sam/${STAMP}/two-shot`),
    ];
    // Reuse walk function
    const merged: Record<string, UsageEntry> = {};
    for (const folder of baseFolders) {
      const jsonFiles = walk(folder);
      for (const filePath of jsonFiles) {
        try {
          const content = JSON.parse(fs.readFileSync(filePath, 'utf-8'));
          const { name, processID, usage } = content;
          if (!name || !processID || usage === undefined) continue;
          if (!merged[name]) {
            merged[name] = { name, usages: [{ processID, usage }] };
          } else {
            merged[name].usages.push({ processID, usage });
          }
        } catch (e) {
          console.error(`Failed to parse ${filePath}:`, e);
        }
      }
    }
    const mergedArr = Object.values(merged);
    const outPath = path.join(__dirname, `../log/llm/sap-sam/${STAMP}/merged_summary.json`);
    fs.writeFileSync(outPath, JSON.stringify(mergedArr, null, 2), 'utf-8');
    console.log(`Merged LLM usage file saved to ${outPath}`);
  });
});