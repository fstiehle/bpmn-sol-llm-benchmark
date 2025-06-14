// test openai/gpt-4.1 - one-shot at 2025-06-11T23:58:43.740Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_96a8a28e_ea74_4210_9056_b0b25f0c593b {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_89EFB759_5389_4CF2_A380_3A6C78ED3761 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task sid_89EFB759_5389_4CF2_A380_3A6C78ED3761 --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_B47C973B_735E_4532_89AB_E7D29BF27ECF --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task sid_B47C973B_735E_4532_89AB_E7D29BF27ECF --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_88083845_6E37_41F4_B362_BC50E0F51A8C --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task sid_88083845_6E37_41F4_B362_BC50E0F51A8C --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}