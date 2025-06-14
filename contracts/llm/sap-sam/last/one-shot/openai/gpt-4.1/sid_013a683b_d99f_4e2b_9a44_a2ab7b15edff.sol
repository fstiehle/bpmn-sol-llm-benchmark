// test openai/gpt-4.1 - one-shot at 2025-06-11T23:23:42.874Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_013a683b_d99f_4e2b_9a44_a2ab7b15edff {
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
    while (_tokenState != 0) {
      // Task 1: sid-56834B12-7360-4FB0-85FC-AAFCA3D66457 - Hotline Anrufen - Teilnehmer: Kunde(0), Mitarbeiter(1), initiating: Mitarbeiter(1)
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[1]) {
          // <--- custom code for Hotline_Anrufen here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: sid-5447374F-1603-455D-AA0E-905DD400C5ED - Probleme loesen - Teilnehmer: Kunde(2), Mitarbeiter(3), initiating: Kunde(2)
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for Probleme_loesen here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Task 3: sid-5C3B79C5-F84E-4FF2-A431-824BB133308D - Kunden_besuchen - Teilnehmer: Kunde(4), Mitarbeiter(5), initiating: Kunde(4)
      if (_tokenState & 4 == 4) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for Kunden_besuchen here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Task 4: sid-C8E66024-EF11-45B7-9050-2DA1576005D3 - Formular_unterschreiben - Teilnehmer: Kunde(6), Mitarbeiter(7), initiating: Kunde(6)
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for Formular_unterschreiben here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
