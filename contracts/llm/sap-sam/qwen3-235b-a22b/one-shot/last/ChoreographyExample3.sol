// test large Model - One Shot at 2025-06-05T15:23:04.148Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_ChoreographyExample3 {
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
          _tokenState |= 2;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // Exclusive Gateway - Gateway_1bpkhpg
        bool condition1 = (conditions & 1 == 1);

        if (condition1) {
          // Transition to Confirm order
          _tokenState &= ~uint(2);
          _tokenState |= 16;
        } else {
          // Default flow to Confirm ETA
          _tokenState &= ~uint(2);
          _tokenState |= 64;
        }
        continue;
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (id == 4 && msg.sender == participants[0]) {
          _tokenState &= ~uint(16);
          _tokenState |= 8;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // Parallel Gateway - Gateway_1klfaw3
        // Split into two paths
        _tokenState &= ~uint(8);
        _tokenState |= 32 | 64;
        continue;
      }

      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_0gnknm9 Confirm ETA --->
        if (id == 5 && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 128 == 128) {
        // Parallel Gateway - Gateway_0xcnzox
        // Check if both incoming flows are active
        if ((_tokenState & (32 | 64)) == (32 | 64)) {
          // Merge and proceed to Ship goods
          _tokenState &= ~uint(128);
          _tokenState |= 256;
        }
        continue;
      }

      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // End reached
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}