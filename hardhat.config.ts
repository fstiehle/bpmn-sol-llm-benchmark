import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";

const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.9",
    settings: {
      "optimizer": { 
        "enabled": true,
        "runs": 100
      }
    }
  },
  mocha: {
    timeout: 40000
  },
};

export default config;