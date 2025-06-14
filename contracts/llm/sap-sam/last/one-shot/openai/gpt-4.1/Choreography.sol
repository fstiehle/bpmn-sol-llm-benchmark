// test openai/gpt-4.1 - one-shot at 2025-06-11T23:23:26.592Z
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
      // ChoreographyTask_1vnykqp (Order_goods)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // task code here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask_16lc74v (Produce_goods)
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[1]) {
          // task code here
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask_07t2zjo (Inform_customer)
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[1]) {
          // task code here
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask_056ylqg (Ship_goods)
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[1]) {
          // task code here
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      // ExclusiveGateway Gateway_1bpkhpg
      if (_tokenState & 2 == 2) {
        // two outgoing: Flow_067nql1 ("conditions & 1 == 1"), Flow_0ymdsa2 (default)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 64;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 12;
          continue;
        }
      }
      // ParallelGateway Gateway_1klfaw3 (split)
      if (_tokenState & 12 == 12) {
        _tokenState &= ~uint(12);
        _tokenState |= 4;
        _tokenState |= 8;
        continue;
      }
      // ParallelGateway Gateway_0xcnzox (join)
      if (_tokenState & 24 == 24) {
        _tokenState &= ~uint(24);
        _tokenState |= 64;
        continue;
      }
      // ExclusiveGateway Gateway_1yl9mch
      if (_tokenState & 64 == 64) {
        // only default sequenceFlow: Flow_11zi7qu to ChoreographyTask_056ylqg
        _tokenState &= ~uint(64);
        _tokenState |= 32;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
