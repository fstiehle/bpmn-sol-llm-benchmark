// test GPT 4.1 - One Shot Revised at 2025-06-05T15:20:46.629Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_ChoreographyExample2 {
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
      // <--- ChoreographyTask_1vnykqp (Order goods) --->
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // After execution: deactivate current, activate Gateway_1bpkhpg (bit 2)
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      // <--- ChoreographyTask_16lc74v (Produce goods) --->
      if (_tokenState & 8 == 8) {
        if (id == 1 && msg.sender == participants[1]) {
          // After execution: deactivate current, activate Gateway_0xcnzox (bit 64)
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          continue;
        }
      }

      // <--- ChoreographyTask_07t2zjo (Inform customer) --->
      if (_tokenState & 16 == 16) {
        if (id == 2 && msg.sender == participants[1]) {
          // After execution: deactivate current, activate Gateway_0xcnzox (bit 64)
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        }
      }

      // <--- ChoreographyTask_056ylqg (Ship goods) --->
      if (_tokenState & 512 == 512) {
        if (id == 3 && msg.sender == participants[1]) {
          // After execution: deactivate current, process ends (tokenState = 0)
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break;
        }
      }

      // <--- ChoreographyTask_0n57gae (Confirm order) --->
      if (_tokenState & 32 == 32) {
        if (id == 4 && msg.sender == participants[0]) {
          // After execution: deactivate current, activate Gateway_1yl9mch (bit 256)
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          continue;
        }
      }

      // <--- Gateway_1bpkhpg (exclusive gateway, bit 2) --->
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        // Conditional outgoing: Flow_067nql1
        if (conditions & 1 == 1) {
          // Activate ChoreographyTask_0n57gae (bit 32)
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // Default: Flow_0ymdsa2 to Gateway_1klfaw3 (bit 4)
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      // <--- Gateway_1klfaw3 (parallel split, bit 4) --->
      if (_tokenState & 4 == 4) {
        // Split: activate ChoreographyTask_16lc74v (bit 8), ChoreographyTask_07t2zjo (bit 16)
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16;
        continue;
      }

      // <--- Gateway_0xcnzox (parallel join, bit 64) --->
      // Wait for both incoming tokens: from ChoreographyTask_16lc74v (bit 8) and ChoreographyTask_07t2zjo (bit 16)
      // When both have been executed, only bit 64 remains.
      if (_tokenState & 64 == 64 && (_tokenState & (8 | 16)) == 0) {
        // After join: deactivate current, activate Gateway_1yl9mch (bit 256)
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        continue;
      }

      // <--- Gateway_1yl9mch (exclusive gateway, bit 256) --->
      if (_tokenState & 256 == 256) {
        // Only default outgoing: Flow_11zi7qu to ChoreographyTask_056ylqg (bit 512)
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue;
      }

      break;
    }

    tokenState = _tokenState;
  }
}