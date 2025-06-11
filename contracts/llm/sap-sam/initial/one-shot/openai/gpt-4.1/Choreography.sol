// test openai/gpt-4.1 - one-shot at 2025-06-11T18:31:24.959Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_Choreography {
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
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order_goods --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway_1bpkhpg (exclusive) --->
        // Outgoing: Flow_067nql1 (cond), Flow_0ymdsa2 (default)
        bool matched = false;
        if ((conditions & 1 == 1)) {
          // <--- Flow_067nql1: conditions & 1 == 1 --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          matched = true;
          continue;
        }
        if (!matched) {
          // <--- Flow_0ymdsa2: default --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Gateway_1klfaw3 (parallel split) --->
        // Out: ChoreographyTask_16lc74v, ChoreographyTask_07t2zjo
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 32;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v Produce_goods --->
        if (2 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_07t2zjo Inform_customer --->
        if (3 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 64 == 64 || _tokenState & 128 == 128) {
        // <--- Gateway_0xcnzox (parallel join) --->
        if ((_tokenState & 64 == 64) && (_tokenState & 128 == 128)) {
          // Both incoming complete
          _tokenState &= ~(uint(64) | uint(128));
          _tokenState |= 16;
          continue;
        }
        // Wait for both to complete
      }
      if (_tokenState & 16 == 16) {
        // <--- Gateway_1yl9mch (exclusive) --->
        // Only outgoing: Flow_11zi7qu (default)
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_056ylqg Ship_goods --->
        if (4 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
