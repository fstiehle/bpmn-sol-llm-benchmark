// test openai/gpt-4.1 - two-shot at 2025-06-12T01:01:24.641Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
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
        // <--- sid-6F0CC474-0DE0-473D-806B-948E25F93FFA aa --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B2024251-8DE3-41A1-9596-A5E6788A71AF aadas --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CB238E79-5376-4273-8A2F-3B9C56572F77 a --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B gateway --->
        bool transitioned = false;
        // sid-0464AB0B-D98F-4691-A3CC-720B0E9E41C4 with condition: conditions & 1 == 1 to sid-CB238E79-5376-4273-8A2F-3B9C56572F77
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
          continue;
        }
        // default: sid-5973BBD8-FD9B-4B3F-B0B1-21220CBA3458 to sid-B2024251-8DE3-41A1-9596-A5E6788A71AF
        if (!transitioned) {
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
