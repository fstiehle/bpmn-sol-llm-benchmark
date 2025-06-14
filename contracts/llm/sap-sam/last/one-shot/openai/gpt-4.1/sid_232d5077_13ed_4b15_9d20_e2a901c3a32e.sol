// test openai/gpt-4.1 - one-shot at 2025-06-11T23:28:36.386Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
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
      // ---- task1 ----
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task1
          _tokenState &= ~uint(2);
          _tokenState |= 12;
          id = 0;
          continue;
        }
      }
      // ---- task2 ----
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task2
          _tokenState &= ~uint(4);
          _tokenState |= 24;
          id = 0;
          continue;
        }
      }
      // ---- task3 ----
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task3
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      // ---- task4 ----
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task4
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break;
        }
      }
      // ---- Parallel split: after startEvent ----
      if (_tokenState & 1 == 1) {
        // from startEvent to parallel split
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue;
      }
      // ---- Parallel join: after task1 & task2 ----
      if ((_tokenState & 12) == 12) {
        // parallel join, both completed
        _tokenState &= ~uint(12);
        _tokenState |= 16;
        continue;
      }
      // ---- Event-based gateway split ----
      if (_tokenState & 16 == 16) {
        // event-based gateway split to task3 and task4
        _tokenState &= ~uint(16);
        _tokenState |= 96;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}