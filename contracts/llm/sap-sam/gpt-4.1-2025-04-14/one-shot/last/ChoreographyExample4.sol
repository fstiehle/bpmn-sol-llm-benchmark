// test GPT 4.1 - One Shot at 2025-06-05T15:17:14.568Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample4 {
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
      // ---- ChoreographyTask_1vnykqp: Order goods ----
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // Order goods done, flow to Gateway_1bpkhpg
          _tokenState &= ~uint(1);
          // Gateway_1bpkhpg:
          //   - If conditions & 1 == 1: Confirm ETA (ChoreographyTask_0belpst)
          //   - else: Gateway_1klfaw3 (parallel: Produce goods, Inform customer)
          if (conditions & 1 == 1) {
            _tokenState |= 16; // ChoreographyTask_0belpst
          } else {
            _tokenState |= 2 | 4; // ChoreographyTask_16lc74v and ChoreographyTask_07t2zjo (parallel, handled as bits 2 and 4)
          }
          break;
        }
      }

      // ---- ChoreographyTask_16lc74v: Produce goods ----
      if (_tokenState & 2 == 2) {
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(2);
          // Outgoing: to Gateway_0xcnzox (parallel join)
          // After both Produce goods and Inform customer are done, enable Gateway_1yl9mch
          // We'll join when both bits 2 and 4 are cleared, and both have set bit 32
          _tokenState |= 8; // Mark arrival at Gateway_0xcnzox
          // Check if both 8 and 32 are set (both tasks completed)
          if ((_tokenState & 8) != 0 && (_tokenState & 32) != 0) {
            _tokenState &= ~uint(8 | 32);
            // Move to Gateway_1yl9mch
            _tokenState |= 64;
          }
          break;
        }
      }

      // ---- ChoreographyTask_07t2zjo: Inform customer ----
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          // Outgoing: to Gateway_0xcnzox (parallel join)
          _tokenState |= 32; // Mark arrival at Gateway_0xcnzox
          if ((_tokenState & 8) != 0 && (_tokenState & 32) != 0) {
            _tokenState &= ~uint(8 | 32);
            // Move to Gateway_1yl9mch
            _tokenState |= 64;
          }
          break;
        }
      }

      // ---- ChoreographyTask_056ylqg: Ship goods ----
      if (_tokenState & 128 == 128) {
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(128);
          // This leads to endEvent, so tokenState=0
          _tokenState = 0;
          break;
        }
      }

      // ---- ChoreographyTask_0belpst: Confirm ETA ----
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[1]) {
          _tokenState &= ~uint(16);
          // Outgoing: to Gateway_1yl9mch
          _tokenState |= 64;
          break;
        }
      }

      // ---- Gateway_1yl9mch: Exclusive gateway after Confirm ETA or parallel join ----
      // Default flow: to Gateway_069256q
      if (_tokenState & 64 == 64) {
        _tokenState &= ~uint(64);
        // Outgoing: Gateway_069256q
        _tokenState |= 256;
        continue;
      }

      // ---- Gateway_069256q: Exclusive gateway for pickup/ship ----
      //  - If conditions & 2 == 2: Ship goods
      //  - else: End (Pickup)
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        if (conditions & 2 == 2) {
          // Ship goods
          _tokenState |= 128;
        } else {
          // End event (Pickup): tokenState = 0
          _tokenState = 0;
        }
        continue;
      }

      // If no transitions were triggered, break to avoid infinite loop
      break;
    }
    tokenState = _tokenState;
  }
}