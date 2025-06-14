// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T16:52:29.212Z
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
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask_1vnykqp: Order goods
        if (1 == taskID && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 6;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // ChoreographyTask_16lc74v: Produce goods
        if (2 == taskID && msg.sender == participants[1]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // ChoreographyTask_07t2zjo: Inform customer
        if (3 == taskID && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // ChoreographyTask_056ylqg: Ship goods
        if (4 == taskID && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; 
        }
      }
      if (_tokenState & 6 == 6) {
        // Gateway_1bpkhpg: Exclusive gateway
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(6);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 24 == 24) {
        // Gateway_0xcnzox: Parallel join
        _tokenState &= ~uint(24);
        _tokenState |= 32;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
