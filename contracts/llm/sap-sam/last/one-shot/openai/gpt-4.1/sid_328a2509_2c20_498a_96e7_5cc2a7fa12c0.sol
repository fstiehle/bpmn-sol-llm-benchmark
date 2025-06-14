// test openai/gpt-4.1 - one-shot at 2025-06-14T00:24:55.375Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_328a2509_2c20_498a_96e7_5cc2a7fa12c0 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-4DB685DD-6383-42A3-8D06-0AB4D69F921C Skasowanie_wizyty --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-CD8932F0-FA63-4338-B81E-2E2B4D6E149F Dokonanie_skasowania_wizyty --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-9A69B876-7737-4E82-9EAF-4023E127749C Skasowanie_wizyty --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Exclusive Gateway sid-5ECAAC87_4877_474A_A106_1ABD47BAA1EA (Converging) --->
        // No conditions, always take default
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- Parallel Gateway sid-26AD080D_D2BA_4FFF_A84A_5ED32418E470 (Diverging) --->
        _tokenState &= ~uint(16);
        _tokenState |= 6;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-E40BD334-AFF4-43A2-9144-B49F16663E03 Dokonanie_skasowania_wizyty --->
        if (4 == id && msg.sender == participants[7]) {
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
