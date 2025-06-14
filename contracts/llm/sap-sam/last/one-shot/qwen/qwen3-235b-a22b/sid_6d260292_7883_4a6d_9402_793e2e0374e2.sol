// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:10:00.260Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
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
        // <--- Exclusive Gateway sid-3545C612... --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(1);
          _tokenState |= 8;
        } else {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
        }
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- Task 1 T1 --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Task 2 T2 --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState = 0;
          break;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Task 3 T3 --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- Task 4 T4 --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
