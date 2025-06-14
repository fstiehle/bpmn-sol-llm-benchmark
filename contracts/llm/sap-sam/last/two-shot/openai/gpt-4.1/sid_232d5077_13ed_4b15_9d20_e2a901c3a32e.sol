// test openai/gpt-4.1 - two-shot at 2025-06-12T00:13:14.826Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-BD7B4002-9065-4315-AA74-82D3A6E7F757 task1
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for sid-BD7B4002-9065-4315-AA74-82D3A6E7F757 task1 here --->
          _tokenState &= ~uint(1);
          _tokenState |= 6;
          id = 0;
          continue;
        }
      }
      // sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5 task2
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5 task2 here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4 task3
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4 task3 here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      // sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548 task4
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548 task4 here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break;
        }
      }
      // Parallel Gateway (Diverging) after StartEvent: split to 2 paths (task1 and task2)
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        _tokenState |= 3;
        continue;
      }
      // Parallel Gateway (Converging): join after task1 and task2
      if (_tokenState & 6 == 6) {
        _tokenState &= ~uint(6);
        _tokenState |= 16;
        continue;
      }
      // Event-based Gateway (Exclusive): diverge after join, to task3 or task4
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 96;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
