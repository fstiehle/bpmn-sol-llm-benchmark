// test openai/gpt-4.1 - two-shot at 2025-06-14T00:26:06.606Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
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
        // <--- sid-984B95C1_C450_4BCC_A703_06A3F1E372B8 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
        // <--- sid-74D17AC8_A5F1_49EC_AD9E_66623C00824A --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        continue; 
      }
      if (_tokenState & 4 == 4) {
        // <---  auto transition  --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        continue; 
      }
      if (_tokenState & 8 == 8) {
        // <--- end event, process terminates --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
