// test large Model - Two Shot at 2025-06-05T15:25:25.785Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_two_shot_ChoreographyExample4 {
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

      if ((_tokenState & 6) == 6) {
        if ((conditions & 1) == 1) {
          // <--- auto transition via Flow_067nql1 --->
          _tokenState &= ~uint(6);
          _tokenState |= 16;
          continue;
        } else {
          // <--- default flow via Flow_0ymdsa2 --->
          _tokenState &= ~uint(6);
          _tokenState |= 24;
          continue;
        }
      }

      if ((_tokenState & 24) == 24) {
        // <--- parallel enable both tasks 1 and 2 --->
        // Check for ChoreographyTask_16lc74v (id=1)
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(24);
          _tokenState |= 48;
          continue;
        }
        // Check for ChoreographyTask_07t2zjo (id=2)
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(24);
          _tokenState |= 96;
          continue;
        }
      }

      if ((_tokenState & 48) == 48) {
        // Only activate join after task 1 completion
        _tokenState &= ~uint(48);
        _tokenState |= 144;
        continue;
      }

      if ((_tokenState & 96) == 96) {
        // Only activate join after task 2 completion
        _tokenState &= ~uint(96);
        _tokenState |= 144;
        continue;
      }

      if ((_tokenState & 144) == 144) {
        // Join both paths -> now proceed to Gateway_1yl9mch via Flow_198zju1
        _tokenState &= ~uint(144);
        _tokenState |= 256;
        continue;
      }

      if ((_tokenState & 256) == 256) {
        // Evaluate outgoing flows from Gateway_1yl9mch
        // No condition on Flow_0fgvp2x, but it leads to ChoreographyTask_0belpst which is ID=4
        // So we allow enactment of that task

        if (id == 4 && msg.sender == participants[1]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        }
      }

      if ((_tokenState & 512) == 512) {
        // After ChoreographyTask_0belpst completes, reach Gateway_069256q
        // Now evaluate its outgoing sequence flows

        if ((conditions & 2) == 2) {
          // <--- Flow_00eesh8 taken --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue;
        } else {
          // <--- default flow Flow_1t2mfkx taken --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break;
        }
      }

      if ((_tokenState & 1024) == 1024) {
        // Execute ChoreographyTask_056ylqg (id=3)
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break;
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}