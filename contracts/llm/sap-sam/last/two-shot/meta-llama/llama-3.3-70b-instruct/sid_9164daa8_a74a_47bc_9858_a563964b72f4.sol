// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T11:53:24.705Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Make Travel Offer --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (2 == taskID && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (4 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (5 == taskID && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (6 == taskID && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
