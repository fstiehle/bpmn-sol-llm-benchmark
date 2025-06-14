// test openai/gpt-4.1 - one-shot at 2025-06-11T23:41:18.790Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_51ce2cc1_ec9c_49a8_900b_62d5dea1183a {
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
        // <--- ChoreographyTask_CT1 --->
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for ChoreographyTask_CT1 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_CT2 --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for ChoreographyTask_CT2 here --->
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