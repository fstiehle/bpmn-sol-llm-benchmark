// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T05:58:20.409Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_25ac1cbf_f096_40c5_bd89_e80c5877c97c {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-C7FA4975-D6F8-4D7E-89AE-48250D1B8233 M2 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-14244F4D-8990-4611-8CBF-6C8DEFFB4739 M3 --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
