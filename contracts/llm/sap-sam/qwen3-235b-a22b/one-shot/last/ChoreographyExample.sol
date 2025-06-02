// test large Model - One Shot at 2025-06-02T19:32:19.332Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_ChoreographyExample {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (id == 0 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 6;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 2 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 6 == 6) {
        if ((conditions & 1) == 1) {
          // <--- auto transition [available] --->
          _tokenState &= ~uint(6);
          _tokenState |= 32;
          continue;
        } else {
          // default flow [unavailable] is already active via bitmask
          // do nothing, wait for parallel tasks to complete
          break;
        }
      }
      if (_tokenState & 24 == 24) {
        // <--- auto transition after parallel gateway completion --->
        _tokenState &= ~uint(24);
        _tokenState |= 32;
        continue;
      }
      break;
    }

    tokenState = _tokenState;
  }
}