// test large Model - Two Shot at 2025-06-05T15:24:36.009Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_two_shot_ChoreographyExample {
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
        // Gateway_1bpkhpg - Exclusive Gateway
        bool cond_067nql1 = (conditions & 1 == 1);

        if (cond_067nql1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }

      if (_tokenState & 8 == 8) {
        // Gateway_1klfaw3 - Parallel Gateway
        // Wait for all incoming flows, then activate both outgoing tasks
        _tokenState &= ~uint(8);
        _tokenState |= 16 | 32;
        continue;
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(16);
          if ((_tokenState & 32) == 0) {
            // Not all parallel paths completed yet
            continue;
          } else {
            _tokenState |= 64;
          }
        }
        continue;
      }

      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          if ((_tokenState & 16) == 0) {
            // Not all parallel paths completed yet
            continue;
          } else {
            _tokenState |= 64;
          }
        }
        continue;
      }

      if (_tokenState & 64 == 64) {
        // Gateway_0xcnzox - Parallel Gateway join
        // All incoming paths must be complete before progressing
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }

      if (_tokenState & 128 == 128) {
        // Gateway_1yl9mch - Exclusive Gateway
        // Only one outgoing path, use default
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }

      if (_tokenState & 256 == 256) {
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