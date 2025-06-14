> This repository contains code and data to replicate the study `On LLM Assisted Generation
of Smart Contracts from Business Processes` (in submission).

## Install

The project is built using node v23.10.0, which needs to be installed. Then,
in the project directory run `npm install`.

## Replicate the Benchmark Run
To run our benchmark `last`, which includes 165 process models from SAP-SAM, run:
1. `npm run test`, which compiles the contracts (may take a while) executes the correctness benchmark (may take a while). To see debug output you can create a `.env` file in the root repository or otherwise set the DEBUG=true environment variable.
2. `npm run summary`, which will create convenient merged files for data analysis out of the singular execution and usage (llm) logs. They can be found in `log/execution/sap-sam/last/merged_summary.json` and analogously in the `llm` folder. `/scripts/` contains .R scripts to visualise the results.

## Overview
### Folder Structure
```
.
├── data/
│   └── [process models, encodings, and prompt templates]
├── prompts/
│   └── [prompt template files for LLMs]
├── xes/
│   └── [XES generated conforming event log files]
├── scripts/
│   └── [R scripts for visualization]
├── src/
│   └── [Source code]
├── test/
│   └── [test runner scripts]
├── log/
│   └── execution/
│       [benchmark logs]
│   └── llm/
│       [llm request and usage logs]
├── contracts/
│   └── [generated Smart contract files] 
└── .env (optional)
```

### Configuration

The main configuration for the benchmark is done in `bench.config.ts`. Key options include:

- **STAMP**: Identifier for the current experiment (used in log and output paths). Currently `last`, which refers to the benchmark run conducted in our study. Create a new name for a new benchmark run.
- **DEBUG**: Set via environment variable or `.env` file to enable debug output.
- **NR_NON_CONFORMING_TRACES**: Number of non-conforming traces to generate and replay per process model.
- **NR_PROCESS_MODELS**: Number of process models to use from the dataset (can be a number or "all").
- **XES_PARSER, XES_DIR, ENCODINGS_DIR**: Paths and parser for event logs and encodings.
- **ENDPOINT, SYSTEM_PROMPT**: LLM API endpoint and system prompt for smart contract generation.
- **modelNames**: List of LLM model identifiers to benchmark.
- **promptPaths**: List of prompt template files to use for all models.
- **modelTestConfigs**: All combinations of models and prompts as `TestConfig` objects.
- **llms**: List of LLM requests to run (by default, all combinations).
- **run**: List of output benchmarks to run (by default, all combinations).

You can adjust these options in `bench.config.ts` to control which models, prompts, and process models are included in the benchmark run.

If you want to run your own OpenRouter requersts (via `npm llm`) you must set a `OPENROUTER_SC_API_KEY` environment variable.

If you want to run it on other data, place the data in `data/raw/`.

### Scripts
The following `npm run` scripts can be run:
- `compile`: Prepares tests and compiles contracts using Hardhat.
- `test`: Runs the main correctness benchmark (`test/execute.ts`).
- `sam`: Pre-processes the SAP-SAM data and runs the simulator.
- `**`summary`: Generates merged summary files for analysis.
- `llm`: Runs the llm requests through OpenRouter.
- `clean-all`: Cleans generated files and artifacts except raw data.
- `clean-llm`: Cleans LLM-related contract files and artifacts.

See `package.json` for details.