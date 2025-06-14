// test openai/gpt-4.1 - two-shot at 2025-06-12T00:15:47.218Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_2c3e9901_dd59_4292_a32a_d66611d73ffa {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-4A166C13_1A80_4F15_8144_B00BB9EB0B27 Vastaanota tilaus --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-3CC56E18_ED4C_4707_967E_8C4C476067C0 Laheta lasku --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-51D6AEC7_B161_4529_9AF1_3965EB576E91 Vastaanota maksu --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-C3D62CC0_1119_4F36_AF35_7852DB9F7A5F Laheta tilaus --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-68A599B2_B51C_4BF3_8D27_53485E5009E4 Exclusive Gateway --->
        // sid-7AF45A6B_2A91_4CC4_9F5B_1B195E096DE9: conditions & 1 == 1 --> sid-3CC56E18_ED4C_4707_967E_8C4C476067C0
        // sid-603CAF26_22D2_43C6_9760_9B69EF5FD1D3: [default] --> sid-6E4D3B42_B6A3_460A_BFEA_16916482A898
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-6E4D3B42_B6A3_460A_BFEA_16916482A898 Informoi asiakasta --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
