// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:24:05.616Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
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
        // <--- start --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue; 
      }
      if (_tokenState & 2 == 2) {
        // <--- parallelGateway --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        _tokenState |= 8;
        continue; 
      }
      if (_tokenState & 4 == 4) {
        // <--- Call decision --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Call decision --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- parallelGateway --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        // <--- parallelGateway --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- end --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
