// test large Model - One Shot at 2025-06-05T15:22:51.457Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_ChoreographyExample2 {
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
        if (0 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // Exclusive Gateway - Gateway_1bpkhpg
        bool conditionFlow6 = false;
        if ((conditions & 1) == 1) {
          conditionFlow6 = true;
        }

        if (conditionFlow6) {
          // Follow conditional flow to Gateway_1yl9mch
          _tokenState &= ~uint(2);
          _tokenState |= 16;
        } else {
          // Default flow to Gateway_1klfaw3
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }

      if (_tokenState & 4 == 4) {
        // Parallel Gateway - Gateway_1klfaw3
        // Activate both outgoing branches
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16;
        continue;
      }

      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (1 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (2 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // Parallel Gateway - Gateway_0xcnzox
        // Wait for both incoming flows before proceeding
        // Both bits must be set before transitioning out
        if ((_tokenState & 8) == 0 && (_tokenState & 16) == 0) {
          // Both previous tasks completed; now activate next gateway
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
      }

      if (_tokenState & 64 == 64) {
        // Exclusive Gateway - Gateway_1yl9mch
        // Only one outgoing flow (default), so we proceed directly
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }

      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (3 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }

      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (4 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          continue;
        }
      }

      if (_tokenState & 64 == 64) {
        // Back at Gateway_1yl9mch
        // This is final merge before end
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break;
      }

      break;
    }

    tokenState = _tokenState;
  }
}