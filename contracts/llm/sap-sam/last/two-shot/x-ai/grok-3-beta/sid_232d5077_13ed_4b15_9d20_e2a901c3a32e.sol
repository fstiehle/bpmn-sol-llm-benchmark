// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:22:49.950Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-BD7B4002-9065-4315-AA74-82D3A6E7F757 task1 --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5 task2 --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4 task3 --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548 task4 --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 3 == 3) {
        // <--- sid-51FDD8A3-0E17-4736-AA14-AE6D303EF8E0 parallel split --->
        _tokenState &= ~uint(3);
        _tokenState |= 3; // Already set to activate both tasks 1 and 2
        continue;
      }
      if (_tokenState & 12 == 12) {
        // <--- sid-CA0395AA-40A9-47C7-83B3-1F4666FEFA18 parallel join --->
        _tokenState &= ~uint(12);
        _tokenState |= 64;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-78C45E25-19C0-43E0-B19B-39FED201B266 event-based gateway --->
        _tokenState &= ~uint(64);
        _tokenState |= 48; // Activate both possible paths (task3 and task4)
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}