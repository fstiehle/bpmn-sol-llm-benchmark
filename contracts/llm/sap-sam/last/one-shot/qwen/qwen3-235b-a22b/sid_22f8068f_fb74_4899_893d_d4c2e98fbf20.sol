// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:20:36.318Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_22f8068f_fb74_4899_893d_d4c2e98fbf20 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- Generate Purchase Request --->
        if (taskID == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // <--- Generate Purchase Order --->
        if (taskID == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // <--- Generate Invoice --->
        if (taskID == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // <--- Process Payment --->
        if (taskID == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
