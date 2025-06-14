// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:58:26.568Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
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
        // <--- ChoreographyTask: Make Travel Offer --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask: Pay Travel --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask: Confirm Booking --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask: Pay Travel --->
        if (5 == taskID && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask: Order Ticket --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask: Confirm Payment --->
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
