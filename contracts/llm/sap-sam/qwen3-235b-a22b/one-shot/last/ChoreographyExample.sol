// test large Model - One Shot at 2025-06-05T15:22:35.382Z
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
          _tokenState &= ~uint(1);
          _tokenState |= 6;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if (_tokenState & 6 == 6) {
        // <--- Exclusive Gateway 1bpkhpg with condition and default --->
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(6);
          _tokenState |= 32;
          continue;
        } else {
          // Default path
          _tokenState &= ~uint(6);
          _tokenState |= 24;
          continue;
        }
      }

      if (_tokenState & 24 == 24) {
        // <--- Parallel Gateway 1klfaw3 (split) --->
        // Activate both outgoing branches
        _tokenState &= ~uint(24);
        _tokenState |= 2 + 4; // enable both tasks: Produce goods & Inform customer
        continue;
      }

      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v after parallel join --->
        // This is redundant because already handled above, but kept for clarity
        continue;
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_07t2zjo after parallel join --->
        // This is redundant because already handled above, but kept for clarity
        continue;
      }

      if ((_tokenState & 2) == 2 || (_tokenState & 4) == 4) {
        // Wait for both Produce goods & Inform customer to complete before proceeding
        bool allParallelTasksCompleted = true;
        if ((_tokenState & 2) == 2) allParallelTasksCompleted = false;
        if ((_tokenState & 4) == 4) allParallelTasksCompleted = false;

        if (allParallelTasksCompleted) {
          // Join Parallel Gateway 0xcnzox -> Go to next state
          _tokenState &= ~uint(2 + 4);
          _tokenState |= 24;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }

      if (_tokenState & 32 == 32) {
        continue;
      }

      if (_tokenState & 24 == 24) {
        // <--- Exclusive Gateway 1yl9mch with default --->
        // Always go to Ship goods
        _tokenState &= ~uint(24);
        _tokenState |= 32;
        continue;
      }

      break;
    }

    tokenState = _tokenState;
  }
}