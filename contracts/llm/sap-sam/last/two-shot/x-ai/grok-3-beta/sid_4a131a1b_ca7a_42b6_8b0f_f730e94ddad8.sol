// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:31:38.446Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
  uint public tokenState = 1; // Start with the initial state at bit 0
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-6F0CC474-0DE0-473D-806B-948E25F93FFA aa --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Move to gateway
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B2024251-8DE3-41A1-9596-A5E6788A71AF aadas --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0; // End state
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CB238E79-5376-4273-8A2F-3B9C56572F77 a --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0; // End state
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B exclusive gateway --->
        if (conditions & 1 == 1) {
          // <--- conditional path to sid-CB238E79-5376-4273-8A2F-3B9C56572F77 --->
          _tokenState &= ~uint(2);
          _tokenState |= 8; // Activate task 3
          continue;
        } else {
          // <--- default path to sid-B2024251-8DE3-41A1-9596-A5E6788A71AF --->
          _tokenState &= ~uint(2);
          _tokenState |= 4; // Activate task 2
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}