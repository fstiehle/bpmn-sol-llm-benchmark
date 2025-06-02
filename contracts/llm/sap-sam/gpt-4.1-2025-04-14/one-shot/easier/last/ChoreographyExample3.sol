// test GPT 4.1 - One Shot with easier example at 2025-06-02T19:30:57.581Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_easier_ChoreographyExample3 {
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
      // <--- ChoreographyTask_1vnykqp: Order goods --->
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // Task: Order goods (Customer)
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      // <--- ExclusiveGateway_1bpkhpg --->
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- ChoreographyTask_0n57gae: Confirm order --->
          if (id == 4 && msg.sender == participants[0]) {
            // Task: Confirm order (Customer)
            _tokenState &= ~uint(2);
            _tokenState |= 12;
            continue;
          }
        } else {
          // <--- ChoreographyTask_07t2zjo: Inform customer --->
          if (id == 2 && msg.sender == participants[1]) {
            // Task: Inform customer (Seller)
            _tokenState &= ~uint(2);
            _tokenState |= 0;
            break; // is end (goes to Gateway_07ncm8m, then Event_05susj6)
          }
        }
      }
      // <--- ParallelGateway_1klfaw3: both branches active (tokenState 12 == 0b1100) --->
      if (_tokenState & 12 == 12) {
        bool progressed = false;
        // <--- ChoreographyTask_16lc74v: Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          // Task: Produce goods (Seller)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          progressed = true;
        }
        // <--- ChoreographyTask_0gnknm9: Confirm ETA --->
        if (id == 5 && msg.sender == participants[1]) {
          // Task: Confirm ETA (Seller)
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          progressed = true;
        }
        if (progressed) continue;
      }
      // <--- ChoreographyTask_16lc74v: only this branch active (tokenState 4) --->
      if (_tokenState & 4 == 4 && (_tokenState & 8 == 0)) {
        if (id == 1 && msg.sender == participants[1]) {
          // Task: Produce goods (Seller)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- ChoreographyTask_0gnknm9: only this branch active (tokenState 8) --->
      if (_tokenState & 8 == 8 && (_tokenState & 4 == 0)) {
        if (id == 5 && msg.sender == participants[1]) {
          // Task: Confirm ETA (Seller)
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }
      // <--- ParallelGateway_0xcnzox: after both branches done (tokenState 48 == 0b110000) --->
      if (_tokenState & 48 == 48) {
        // <--- ChoreographyTask_056ylqg: Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          // Task: Ship goods (Seller)
          _tokenState &= ~uint(48);
          _tokenState |= 0;
          break; // is end (goes to Gateway_07ncm8m, then Event_05susj6)
        }
      }
      // <--- ChoreographyTask_056ylqg: only this branch active (tokenState 16) --->
      if (_tokenState & 16 == 16 && (_tokenState & 32 == 0)) {
        if (id == 3 && msg.sender == participants[1]) {
          // Task: Ship goods (Seller)
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      // <--- ChoreographyTask_056ylqg: only this branch active (tokenState 32) --->
      if (_tokenState & 32 == 32 && (_tokenState & 16 == 0)) {
        if (id == 3 && msg.sender == participants[1]) {
          // Task: Ship goods (Seller)
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}