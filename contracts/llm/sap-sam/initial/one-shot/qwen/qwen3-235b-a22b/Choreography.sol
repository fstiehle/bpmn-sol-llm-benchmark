// test qwen/qwen3-235b-a22b - one-shot at 2025-06-11T19:04:35.591Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_Choreography {
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
        // Start event
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }

      if (_tokenState & 2 == 2) {
        // Order goods (ChoreographyTask_1vnykqp)
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 4 == 4) {
        // Exclusive gateway (Gateway_1bpkhpg)
        if (conditions & 1 == 1) {
          // Condition satisfied
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        } else {
          // Default flow
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }

      if (_tokenState & 8 == 8) {
        // Gateway_1yl9mch
        _tokenState &= ~uint(8);
        _tokenState |= 256;
        continue;
      }

      if (_tokenState & 16 == 16) {
        // Gateway_1klfaw3 (parallel split)
        _tokenState &= ~uint(16);
        _tokenState |= 32 | 64;
        continue;
      }

      if (_tokenState & 32 == 32) {
        // Produce goods (ChoreographyTask_16lc74v)
        if (2 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 64 == 64) {
        // Inform customer (ChoreographyTask_07t2zjo)
        if (3 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 128 == 128) {
        // Gateway_0xcnzox (parallel join)
        _tokenState &= ~uint(128);
        _tokenState |= 8;
        continue;
      }

      if (_tokenState & 256 == 256) {
        // Ship goods (ChoreographyTask_056ylqg)
        if (4 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          break; // End process
        }
        break;
      }

      break;
    }

    tokenState = _tokenState;
  }
}
