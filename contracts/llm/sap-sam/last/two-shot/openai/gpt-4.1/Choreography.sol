// test openai/gpt-4.1 - two-shot at 2025-06-12T00:07:37.969Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_Choreography {
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
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusiveGateway Gateway_1bpkhpg --->
        // Outgoing: Flow_0ymdsa2 (default), Flow_067nql1 (cond: conditions & 1 == 1)
        if (conditions & 1 == 1) {
          // <---  auto transition to Gateway_1yl9mch --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        } else {
          // <---  auto transition to Gateway_1klfaw3 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- parallelGateway Gateway_1klfaw3 (split) --->
        // Outgoing: ChoreographyTask_16lc74v (bit 8), ChoreographyTask_07t2zjo (bit 32)
        _tokenState &= ~uint(4);
        _tokenState |= 40;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (2 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (3 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 192 == 192) {
        // <--- parallelGateway Gateway_0xcnzox (join) --->
        // Incoming: ChoreographyTask_16lc74v (64), ChoreographyTask_07t2zjo (128)
        // Outgoing: Gateway_1yl9mch (bit 16)
        _tokenState &= ~uint(192);
        _tokenState |= 16;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- exclusiveGateway Gateway_1yl9mch --->
        // Only 1 outgoing: ChoreographyTask_056ylqg (bit 256)
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (4 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
