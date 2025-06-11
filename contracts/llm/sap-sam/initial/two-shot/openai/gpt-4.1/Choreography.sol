// test openai/gpt-4.1 - two-shot at 2025-06-11T18:33:22.681Z
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
        // <---  Gateway_1bpkhpg exclusive gateway --->
        // conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue;
        }
        // default flow
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- Gateway_1klfaw3 parallel split --->
        _tokenState &= ~uint(4);
        _tokenState |= 24;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (2 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (3 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 24 == 24) {
        // <--- Gateway_0xcnzox parallel join --->
        _tokenState &= ~uint(24);
        _tokenState |= 128;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (4 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- Gateway_1yl9mch exclusive gateway --->
        // Only one outgoing, default to ChoreographyTask_056ylqg
        _tokenState &= ~uint(128);
        _tokenState |= 32;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
