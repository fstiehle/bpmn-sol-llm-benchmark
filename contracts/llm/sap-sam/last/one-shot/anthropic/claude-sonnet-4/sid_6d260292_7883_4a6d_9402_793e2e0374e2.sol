// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:56:32.059Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_one_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        if (conditions & 1 == 1) {
          // auto transition
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          continue; 
        } else {
          // default transition
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // ChoreographyTask T1
        if (1 == id && msg.sender == participants[0]) {
        // custom code for task here
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // ChoreographyTask T3
        if (3 == id && msg.sender == participants[4]) {
        // custom code for task here
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // ChoreographyTask T2
        if (2 == id && msg.sender == participants[2]) {
        // custom code for task here
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // ChoreographyTask T4
        if (4 == id && msg.sender == participants[6]) {
        // custom code for task here
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
