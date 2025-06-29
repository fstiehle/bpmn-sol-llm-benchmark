import axios from "axios";
import * as dotenv from "dotenv";
import { ENDPOINT, SYSTEM_PROMPT } from "../bench.config";

dotenv.config();

interface QueryData {
  process: string;
  prompt: string;
  model: string;
  temperature: number;
}

interface SmartContractResponse {
  smart_contract: string | null;
  usage: any;
}

export class LLMProvider {
  private apiKey: string;
  private apiUrl: string;

  constructor() {
    this.apiKey = process.env.OPENROUTER_SC_API_KEY || "";
    if (!this.apiKey) {
      throw new Error("OPENROUTER_SC_API_KEY environment variable is not set. Please set it in your environment or .env file.");
    }
    this.apiUrl = ENDPOINT;
  }

  async generate(queryData: QueryData): Promise<SmartContractResponse> {
    const prompt = `<<<${queryData.process}>>>${queryData.prompt}`;

    const payload = {
      model: queryData.model,
      messages: [
        { role: "system", content: SYSTEM_PROMPT },
        { role: "user", content: prompt },
      ],
      usage: {
        include: true,
      },
      max_tokens: 25000, // has to be quite large for qwen's reasoning.
      temperature: queryData.temperature,
      extra_body: { enable_thinking: false },
    };

    const headers = {
      "Authorization": `Bearer ${this.apiKey}`,
      "Content-Type": "application/json",
    };

    try {
      const response = await axios.post(this.apiUrl, payload, { headers, timeout: 10 * 60 * 1000 }); // 5 minutes timeout

      if (response.status !== 200) {
        console.error(`Error: ${response.status} - ${response.statusText}`);
        return {
          smart_contract: null,
          usage: null,
        };
      }

      const data = response.data;
      if (!data || !data.choices || !data.choices[0]?.message?.content) {
        console.error("Invalid response format:", JSON.stringify(data));
        return {
          smart_contract: null,
          usage: data?.usage || null,
        };
      }

      return {
        smart_contract: data.choices[0].message.content,
        usage: data.usage || null,
      };
      } catch (error: any) {
    if (axios.isAxiosError(error)) {
      if (error.response) {
        console.error(
      `Request failed with status ${error.response.status}:`,
      error.response.data
        );
      } else if (error.request) {
        console.error("No response received:", JSON.stringify(error));
        console.error("Error request object:", JSON.stringify(error.request, null, 2));
      } else {
        console.error("Axios error:", error.message);
      }
    } else {
      console.error("Unexpected error:", JSON.stringify(error));
    }
    return {
      smart_contract: null,
      usage: null,
    };
      }
  }
}