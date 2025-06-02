// test GPT 4.1 - One Shot with easier example at 2025-06-02T19:30:19.990Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_easier_ChoreographyExample {
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
  // 0: ChoreographyTask_1vnykqp ("Order goods") - initiator: participants[0] (Customer)
  // 1: ChoreographyTask_16lc74v ("Produce goods") - initiator: participants[1] (Seller)
  // 2: ChoreographyTask_07t2zjo ("Inform customer") - initiator: participants[1] (Seller)
  // 3: ChoreographyTask_056ylqg ("Ship goods") - initiator: participants[1] (Seller)
  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      // Start Event: Event_0y1sdn3 (state 1)
      // 1: Order goods (ChoreographyTask_1vnykqp)
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // <--- custom code for Order goods --->
          _tokenState &= ~uint(1);
          // After Order goods -> exclusiveGateway Gateway_1bpkhpg
          // Set state 2 (Gateway_1bpkhpg active)
          _tokenState |= 2;
          continue;
        }
      }

      // ExclusiveGateway Gateway_1bpkhpg (state 2)
      // Outgoing: 
      //  - available: Flow_067nql1, to Gateway_1yl9mch, cond: conditions & 1 == 1
      //  - default: Flow_0ymdsa2, to Gateway_1klfaw3
      if (_tokenState & 2 == 2) {
        // Check conditional branch
        if ((conditions & 1) == 1) {
          // Go to Gateway_1yl9mch (state 4)
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // Default to Gateway_1klfaw3 (state 8)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }

      // ParallelGateway Gateway_1klfaw3 (state 8)
      // Outgoing: to Produce goods (ChoreographyTask_16lc74v, state 16)
      //           to Inform customer (ChoreographyTask_07t2zjo, state 32)
      if (_tokenState & 8 == 8) {
        // Activate both outgoing parallel branches
        _tokenState &= ~uint(8);
        _tokenState |= 16; // Produce goods
        _tokenState |= 32; // Inform customer
        continue;
      }

      // ChoreographyTask_16lc74v: Produce goods (state 16)
      if (_tokenState & 16 == 16) {
        if (id == 1 && msg.sender == participants[1]) {
          // <--- custom code for Produce goods --->
          _tokenState &= ~uint(16);
          // After Produce goods, go to Gateway_0xcnzox (state 64)
          _tokenState |= 64;
          continue;
        }
      }

      // ChoreographyTask_07t2zjo: Inform customer (state 32)
      if (_tokenState & 32 == 32) {
        if (id == 2 && msg.sender == participants[1]) {
          // <--- custom code for Inform customer --->
          _tokenState &= ~uint(32);
          // After Inform customer, go to Gateway_0xcnzox (state 64)
          _tokenState |= 64;
          continue;
        }
      }

      // ParallelGateway Gateway_0xcnzox (state 64)
      // Incoming: from Inform customer and Produce goods
      // Outgoing: to Gateway_1yl9mch (state 4)
      // (Gateway_0xcnzox waits until both branches have completed)
      // We need to check whether both 16 and 32 are cleared (tasks done) and 64 is set
      if (_tokenState & 64 == 64) {
        // If both Produce goods (16) and Inform customer (32) are cleared (done)
        // (we already cleared their states in their tasks, so just move forward)
        _tokenState &= ~uint(64);
        // Go to Gateway_1yl9mch (state 4)
        _tokenState |= 4;
        continue;
      }

      // ExclusiveGateway Gateway_1yl9mch (state 4)
      // Outgoing: to Ship goods (ChoreographyTask_056ylqg, state 128)
      // Only one outgoing, default "Flow_11zi7qu"
      if (_tokenState & 4 == 4) {
        _tokenState &= ~uint(4);
        // Go to Ship goods (state 128)
        _tokenState |= 128;
        continue;
      }

      // ChoreographyTask_056ylqg: Ship goods (state 128)
      if (_tokenState & 128 == 128) {
        if (id == 3 && msg.sender == participants[1]) {
          // <--- custom code for Ship goods --->
          _tokenState &= ~uint(128);
          // After Ship goods, go to endEvent (state 0)
          _tokenState = 0;
          break; // is end
        }
      }

      // If none matched, break
      break;
    }

    tokenState = _tokenState;
  }
}