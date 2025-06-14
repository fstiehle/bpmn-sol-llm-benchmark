// test openai/gpt-4.1 - two-shot at 2025-06-12T00:58:40.226Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
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
        // <--- parallel split sid-43E0C616_06CF_4862_8DC7_6439ED8C2B37 --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-3AD9F529_B32A_4E6C_A6D1_D567688AD463 Call decision --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-6E5C9418_EE6F_4ED9_9A40_F57E2E6489DE Call decision --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 24 == 24) {
        // <--- parallel join sid-11160CCA_B21E_49DB_91E6_99CA0AD0E828 --->
        _tokenState &= ~uint(24);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- end sid-EB06D1A2_5375_491D_AA42_87342A12F68F --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}