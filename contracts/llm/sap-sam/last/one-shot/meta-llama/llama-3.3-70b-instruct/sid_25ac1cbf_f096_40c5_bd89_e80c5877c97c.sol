// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:11:37.602Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_25ac1cbf_f096_40c5_bd89_e80c5877c97c {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid_C7FA4975_D6F8_4D7E_89AE_48250D1B8233 M2 --->
        if (1 == id && (msg.sender == participants[0] || msg.sender == participants[1])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid_14244F4D_8990_4611_8CBF_6C8DEFFB4739 M3 --->
        if (2 == id && (msg.sender == participants[2] || msg.sender == participants[3])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
