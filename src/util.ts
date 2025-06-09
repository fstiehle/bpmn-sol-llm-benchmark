import { DEBUG } from "../bench.config";

export const logDebug = (...args: any[]) => {
  if (DEBUG) {
    console.log(...args);
  }
}