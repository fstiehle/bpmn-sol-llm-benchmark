// test openai/gpt-4.1 - two-shot at 2025-06-12T00:10:57.248Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_19396877_be94_440c_98de_2cc3f663a397 {
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
      // sid-8C65E42B-E757-4E52-B61B-8848CA9503FC Definiranje problema
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Definiranje problema here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-5A4ADFFF-1BB4-4EB8-A933-FE6DE6BF79FF Istraživanje problema
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for Istraživanje problema here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // Exclusive Gateway sid-D58A80C2-5366-4EAF-85D6-FF528974749C
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // conditions & 1 == 1 to sid-1DBE80B3-FBFF-4331-93CF-C84BF98387D3
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // default path to sid-73121FA6-3845-470E-A214-0579501D074D
        if (!transitioned) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // sid-73121FA6-3845-470E-A214-0579501D074D Detaljno istrazivanje problema
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Detaljno istrazivanje problema here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // Exclusive Gateway sid-1DBE80B3-FBFF-4331-93CF-C84BF98387D3 (Converging)
      if (_tokenState & 16 == 16) {
        // auto transition
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // sid-5E4EC884-D666-4075-A435-CF8788D1DAE2 Slanje rjesenja
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Slanje rjesenja here --->
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