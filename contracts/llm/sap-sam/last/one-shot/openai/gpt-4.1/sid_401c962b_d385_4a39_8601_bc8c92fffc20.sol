// test openai/gpt-4.1 - one-shot at 2025-06-11T23:37:19.279Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
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
    while(_tokenState != 0) {
      // <--- sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 Call decision --->
      if (_tokenState & 2 == 2) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // <--- sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE Call decision --->
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // <--- sid-43E0C616_06CF_4862_8DC7_6439ED8C2B37 ParallelGateway (split) --->
      if (_tokenState & 1 == 1) {
        // Split: activate both sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 and sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue;
      }
      // <--- sid-11160CCA_B21E_49DB_91E6_99CA0AD0E828 ParallelGateway (join) --->
      if (_tokenState & 8 == 8) {
        // Join: wait for both sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 and sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE to finish (handled by bitmask)
        // Here: both tasks clear their bits and set bit 3 (8).
        // This gateway has only one outgoing: to endEvent.
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // End of process
      }
      break;
    }
    tokenState = _tokenState;
  }
}