// test openai/gpt-4.1 - two-shot at 2025-06-12T01:56:45.108Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_a3c861e3_72c1_49c6_b1cc_e5a9a8c1e972 {
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
      if (_tokenState & 2 == 2) {
        // <--- sid-984B95C1-C450-4BCC-A703-06A3F1E372B8 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- event-based gateway sid-104B5171_075C_4A0F_852E_0F94E5A34A83 --->
        // enables sid-984B95C1_C450_4BCC_A703_06A3F1E372B8 or sid-74D17AC8_A5F1_49EC_AD9E_66623C00824A
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- End event sid-D104672B-AA4B-4A22-AC94-9B8B2AFBDEC4 --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}