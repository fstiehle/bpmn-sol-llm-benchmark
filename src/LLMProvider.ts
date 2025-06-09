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
      max_tokens: 5000,
      temperature: queryData.temperature,
      extra_body: { enable_thinking: false },
    };

    const headers = {
      "Authorization": `Bearer ${this.apiKey}`,
      "Content-Type": "application/json",
    };

    try {
      const response = await axios.post(this.apiUrl, payload, { headers });

      if (response.status !== 200) {
        console.error(`Error: ${response.status} - ${response.statusText}`);
        return {
          smart_contract: null,
          usage: null,
        };
      }

      const data = response.data;
      if (!data || !data.choices || !data.choices[0]?.message?.content) {
        console.error("Invalid response format:", data);
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
        console.error("No response received:", error.request);
      } else {
        console.error("Axios error:", error.message);
      }
    } else {
      console.error("Unexpected error:", error);
    }
    return {
      smart_contract: null,
      usage: null,
    };
      }
  }
}