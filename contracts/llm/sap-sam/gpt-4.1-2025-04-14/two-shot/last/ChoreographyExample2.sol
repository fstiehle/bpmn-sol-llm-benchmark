// test GPT Model - Two Shot at 2025-06-05T15:18:45.289Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_two_shot_ChoreographyExample2 {
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

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (0 == id && msg.sender == participants[0]) {
        // Transition: deactivate current, activate next state
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue; 
        }
      }
      // Gateway_1bpkhpg: Exclusive gateway after ChoreographyTask_1vnykqp
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- ChoreographyTask_0n57gae Confirm order --->
          if (4 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
          }
        } else {
          // <--- Gateway_1klfaw3 parallel: Produce goods + Inform customer --->
          // _tokenState 2 -> 4 | 8
          _tokenState &= ~uint(2);
          _tokenState |= 4 | 8;
          continue;
        }
      }
      // Parallel Gateway_1klfaw3: both ChoreographyTask_16lc74v and ChoreographyTask_07t2zjo can be done in any order
      if ((_tokenState & 4 == 4) && (_tokenState & 8 == 8)) {
        // Both tasks are active, allow either
        bool didTask = false;
        // ChoreographyTask_16lc74v: Produce goods
        if (1 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          didTask = true;
        }
        // ChoreographyTask_07t2zjo: Inform customer
        if (2 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          didTask = true;
        }
        if (didTask) {
          // if both done, move to next gateway (Gateway_0xcnzox)
          if ((_tokenState & 4 == 0) && (_tokenState & 8 == 0)) {
            // Activate next state: Gateway_0xcnzox
            _tokenState |= 32;
          }
          continue;
        }
      }
      // If only one of the parallel tasks is left
      if ((_tokenState & 4 == 4) && (_tokenState & 8 == 0)) {
        if (1 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          // After both are done, activate Gateway_0xcnzox
          _tokenState |= 32;
          continue;
        }
      }
      if ((_tokenState & 8 == 8) && (_tokenState & 4 == 0)) {
        if (2 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          // After both are done, activate Gateway_0xcnzox
          _tokenState |= 32;
          continue;
        }
      }
      // If only Gateway_0xcnzox is active (both parallel branches completed)
      if (_tokenState & 32 == 32) {
        // Gateway_0xcnzox to Gateway_1yl9mch (sequence)
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }
      // Gateway_1yl9mch: exclusive, default to Ship goods
      if (_tokenState & 64 == 64) {
        // Can be reached from either Confirm order (Flow_18tih6y) or Gateway_0xcnzox (Flow_198zju1)
        // Only possible task is ChoreographyTask_056ylqg
        if (3 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      // ChoreographyTask_0n57gae: Confirm order (exclusive gateway path)
      if (_tokenState & 16 == 16) {
        // After execution, go to Gateway_1yl9mch
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        continue;
      }
      break;
    }

    tokenState = _tokenState;
  }
}