// test openai/gpt-4.1 - two-shot at 2025-06-12T01:51:27.895Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_91ed8716_8207_4dc4_99bb_433f5d64772a {
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
        // <--- sid-35A24E50-1F69-4524-A80D-935E58B57FD3 Wohnungsart_Bedarfserhebung --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-E52B44B4-2691-4CED-BB06-162931FCA8E1 Klaerung_der_Rechtsform_vom_Objekt --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-535AEDAB-AD89-4EAD-8D6A-8FF0C132539D Baufeldentwicklung --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-957E2833-CF7C-4D58-8DDE-36568CBD7A96 Abstimmung_Bedarf --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}