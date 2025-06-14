// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:53:13.625Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA --->
        if (1 == taskID && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 --->
        if (2 == taskID && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
