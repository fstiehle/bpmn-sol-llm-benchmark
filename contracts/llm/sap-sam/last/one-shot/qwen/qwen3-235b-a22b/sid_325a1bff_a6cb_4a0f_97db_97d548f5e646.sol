// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:25:21.165Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_325a1bff_a6cb_4a0f_97db_97d548f5e646 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-A1EADF1D-3C3A-42C6-83DF-1703AE75B073 --->
        // Envío de facturas de los reportajes y exclusivas
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-A96A3CA9-D477-4CA2-83CC-1A3ABE9B2060 --->
        // Pago de reportajes
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-15522BFB-9AC3-485D-BBA9-81B6611C982D --->
        // Entrega de cheque nominal
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
