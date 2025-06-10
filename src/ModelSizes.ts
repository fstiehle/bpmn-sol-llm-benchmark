// Type definition
type ModelSizeMap = {
  [modelId: string]: number;
};

// The model-size map
export const myModelsWithSizes: ModelSizeMap = {
  // Llama 3.1
  //"meta-llama/llama-3.1-405b:free": 405.0,
  "meta-llama/llama-3.1-405b-instruct": 405,
  "meta-llama/llama-3.1-70b-instruct": 70.0,
  "meta-llama/llama-3.1-8b-instruct:free": 8,

  // Llama 3.2
  "meta-llama/llama-3.2-3b-instruct:free": 3,
  "meta-llama/llama-3.2-1b-instruct:free": 1,

  // Llama 3.3
  "meta-llama/llama-3.3-70b-instruct:free": 70,
  "meta-llama/llama-3.3-8b-instruct:free": 8,

  // Qwen normal
  "qwen/qwen3-14b:free": 14,
  "qwen/qwen3-32b:free": 32,
  "qwen/qwen3-8b:free": 8,

  // Qwen MoE (Mixture of Experts)
  "qwen/qwen3-235b-a22b:free": 235,
  "qwen/qwen3-30b-a3b:free": 30,

  // Qwen reasoning
  "qwen/qwq-32b": 32,
  "qwen/qwq-32b:free": 32,

  // Deepseek chat
  "deepseek/deepseek-chat-v3-0324:free": 658,

  // Anthropic (size unknown, use 0 as placeholder)
  "anthropic/claude-opus-4": 0,

  // OpenAI (size unknown)
  "openai/gpt-4.1": 0,
  "openai/gpt-4.1-mini": 0,
  "openai/gpt-4.1-nano": 0,

  // Grok (size unknown)
  "x-ai/grok-3-beta": 0,
  "x-ai/grok-3-mini-beta": 0,
};
