// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:51:47.279Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_b0fc5cfb_f887_49c9_ad2b_fc17044dd0ff {
  uint public tokenState = 1;
  address[2] public participants;
  uint public conditions;
  
  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-37B5ED95-2A1C-454D-B673-5D7CAAC325B6 --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 0;
          id = 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}