// test openai/gpt-4.1 - one-shot at 2025-06-11T23:30:05.147Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_259a39a2_c4a9_43fc_9cec_94248cc82004 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_8A3C47CF_9A10_43C8_905F_A5396A03A63B fdsagragr --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- end event --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}