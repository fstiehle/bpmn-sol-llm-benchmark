// test large Model - Two Shot at 2025-06-05T15:24:53.213Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_two_shot_ChoreographyExample2 {
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
      if ((_tokenState & 1) == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if ((_tokenState & 2) == 2) {
        // Exclusive Gateway 1bpkhpg branches:
        if ((conditions & 1) == 1) {
          // Branch to Confirm order condition
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // Default branch - unavailable -> Inform customer and Produce goods in parallel
          _tokenState &= ~uint(2);
          _tokenState |= 8 | 16;
          continue;
        }
      }

      if ((_tokenState & 4) == 4) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (id == 4 && msg.sender == participants[0]) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
      }

      if ((_tokenState & 8) == 8 && (_tokenState & 16) == 16) {
        // Both tasks must be present before proceeding
        if (id == 1 && msg.sender == participants[1]) {
          // <--- ChoreographyTask_16lc74v Produce goods --->
          _tokenState &= ~uint(8);
          if ((_tokenState & 16) == 0) {
            // Already completed, wait for other task
            continue;
          }
          _tokenState |= 64;
          continue;
        }

        if (id == 2 && msg.sender == participants[1]) {
          // <--- ChoreographyTask_07t2zjo Inform customer --->
          _tokenState &= ~uint(16);
          if ((_tokenState & 8) == 0) {
            // Already completed, wait for other task
            continue;
          }
          _tokenState |= 64;
          continue;
        }
      }

      if ((_tokenState & 64) == 64) {
        // Transition to next gateway after both parallel paths complete
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }

      if ((_tokenState & 128) == 128) {
        // Only one outgoing flow from this gateway
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }

      if ((_tokenState & 256) == 256) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // end state
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}