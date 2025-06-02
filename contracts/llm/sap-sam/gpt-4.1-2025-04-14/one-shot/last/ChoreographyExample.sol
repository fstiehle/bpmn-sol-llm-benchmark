// test GPT 4.1 - One Shot at 2025-06-02T19:28:43.961Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  // taskID mapping:
  // 0: ChoreographyTask_1vnykqp (Order goods, Customer)
  // 1: ChoreographyTask_16lc74v (Produce goods, Seller)
  // 2: ChoreographyTask_07t2zjo (Inform customer, Seller)
  // 3: ChoreographyTask_056ylqg (Ship goods, Seller)

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      // ChoreographyTask_1vnykqp (Order goods)
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // <--- custom code for Order goods here --->
          _tokenState &= ~uint(1);
          // After Order goods, go to exclusive gateway Gateway_1bpkhpg
          // This gateway's outgoing: Flow_067nql1 (cond) and default Flow_0ymdsa2
          // We'll represent exclusive gateway with state bits 2 (cond) and 4 (default)
          if (conditions & 1 == 1) {
            _tokenState |= 2; // Flow_067nql1 (available)
          } else {
            _tokenState |= 4; // Flow_0ymdsa2 (unavailable)
          }
          continue;
        }
      }
      // Exclusive Gateway_1bpkhpg - state bits 2 (available), 4 (unavailable)
      if (_tokenState & 2 == 2) { // Flow_067nql1 (available)
        // Outgoing: to Gateway_1yl9mch
        _tokenState &= ~uint(2);
        _tokenState |= 64; // state 64 = Gateway_1yl9mch (will enable Ship goods)
        continue;
      }
      if (_tokenState & 4 == 4) { // Flow_0ymdsa2 (unavailable)
        // Outgoing: to parallel Gateway_1klfaw3, which fans out to two tasks
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16; // 8 = ChoreographyTask_16lc74v, 16 = ChoreographyTask_07t2zjo
        continue;
      }
      // ChoreographyTask_16lc74v (Produce goods)
      if (_tokenState & 8 == 8) {
        if (id == 1 && msg.sender == participants[1]) {
          // <--- custom code for Produce goods here --->
          _tokenState &= ~uint(8);
          // Outgoing: to Gateway_0xcnzox (parallel join)
          _tokenState |= 32; // bit 32 = Gateway_0xcnzox (waiting for both tasks)
          continue;
        }
      }
      // ChoreographyTask_07t2zjo (Inform customer)
      if (_tokenState & 16 == 16) {
        if (id == 2 && msg.sender == participants[1]) {
          // <--- custom code for Inform customer here --->
          _tokenState &= ~uint(16);
          // Outgoing: to Gateway_0xcnzox (parallel join)
          _tokenState |= 32; // bit 32 = Gateway_0xcnzox (waiting for both tasks)
          continue;
        }
      }
      // Parallel Gateway_0xcnzox (join of Produce and Inform)
      // If both ChoreographyTask_16lc74v and ChoreographyTask_07t2zjo are done, i.e., both 8 and 16 are unset, and 32 is set
      if (_tokenState & 32 == 32 && _tokenState & 8 == 0 && _tokenState & 16 == 0) {
        // Outgoing: to Gateway_1yl9mch
        _tokenState &= ~uint(32);
        _tokenState |= 64; // Gateway_1yl9mch
        continue;
      }
      // Gateway_1yl9mch (after either successful availability or after join)
      if (_tokenState & 64 == 64) {
        // Outgoing: to ChoreographyTask_056ylqg (Ship goods)
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }
      // ChoreographyTask_056ylqg (Ship goods)
      if (_tokenState & 128 == 128) {
        if (id == 3 && msg.sender == participants[1]) {
          // <--- custom code for Ship goods here --->
          _tokenState &= ~uint(128);
          // Outgoing: end event reached (no more tasks)
          _tokenState = 0;
          break;
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}