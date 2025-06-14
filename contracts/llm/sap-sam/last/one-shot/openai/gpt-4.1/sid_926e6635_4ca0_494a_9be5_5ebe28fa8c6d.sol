// test openai/gpt-4.1 - one-shot at 2025-06-14T00:25:03.273Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
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
        // <--- sid-START sid-800D307F_FFC2_469D_A8BB_A2ACDE26EE92 --->
        // auto transition to parallel gateway sid-104B5171_075C_4A0F_852E_0F94E5A34A83
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- ParallelGateway sid-104B5171_075C_4A0F_852E_0F94E5A34A83 SPLIT --->
        // split to sid-984B95C1_C450_4BCC_A703_06A3F1E372B8 and sid-74D17AC8_A5F1_49EC_AD9E_66623C00824A
        _tokenState &= ~uint(2);
        _tokenState |= 4 | 8;
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-984B95C1_C450_4BCC_A703_06A3F1E372B8 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task 1 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-74D17AC8_A5F1_49EC_AD9E_66623C00824A --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task 2 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 48 == 48) {
        // <--- EndEvent sid-F1912EE6_BC6D_4DC9_95A3_8FF45F91F19E --->
        // both parallel branches joined, terminate process
        _tokenState &= ~uint(48);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}