// test GPT 4.1 - One Shot Revised at 2025-06-05T15:20:16.527Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_ChoreographyExample {
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
      // ChoreographyTask_1vnykqp: Order goods
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // From startEvent to Order goods, then to Gateway_1bpkhpg
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      // Gateway_1bpkhpg (exclusive)
      if (_tokenState & 2 == 2) {
        // Check conditional flow: Flow_067nql1 ("conditions & 1 == 1") to Gateway_1yl9mch
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue;
        } else {
          // Default: Flow_0ymdsa2 to Gateway_1klfaw3
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // Gateway_1klfaw3 (parallel split)
      if (_tokenState & 4 == 4) {
        // Parallel split to ChoreographyTask_16lc74v and ChoreographyTask_07t2zjo
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16;
        continue;
      }
      // ChoreographyTask_16lc74v: Produce goods
      if (_tokenState & 8 == 8) {
        if (id == 1 && msg.sender == participants[1]) {
          // To Gateway_0xcnzox
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          continue;
        }
      }
      // ChoreographyTask_07t2zjo: Inform customer
      if (_tokenState & 16 == 16) {
        if (id == 2 && msg.sender == participants[1]) {
          // To Gateway_0xcnzox
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        }
      }
      // Gateway_0xcnzox (parallel join)
      // Waits for both ChoreographyTask_16lc74v (8) and ChoreographyTask_07t2zjo (16)
      if (_tokenState & 64 == 64) {
        // Need to check if both tasks have completed, i.e., bits 8 and 16 are both zero
        // We only activate Gateway_0xcnzox if both have completed, but since both set bit 64,
        // and can be set twice, we need to ensure both have finished before moving on.
        // On each incoming, we (possibly redundantly) check if both are finished.
        if ((_tokenState & 8 == 0) && (_tokenState & 16 == 0)) {
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          continue;
        }
      }
      // Gateway_1yl9mch (exclusive)
      if (_tokenState & 32 == 32) {
        // Only one outgoing: to ChoreographyTask_056ylqg
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        continue;
      }
      // ChoreographyTask_056ylqg: Ship goods
      if (_tokenState & 128 == 128) {
        if (id == 3 && msg.sender == participants[1]) {
          // To endEvent
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}