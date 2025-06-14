// test openai/gpt-4.1 - one-shot at 2025-06-11T23:27:04.850Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_1b6a99e6_b701_40a6_8f04_86d715a76648 {
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
      // sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung_und_Eingangsbestaetigung_senden
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Bewerbung_und_Eingangsbestaetigung_senden --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende_Unterlagen_anforderen
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Fehlende_Unterlagen_anforderen --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende_Unterlagen_schicken
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Fehlende_Unterlagen_schicken --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage_senden
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Zusage_senden --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage_senden
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Absage_senden --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // Exclusive Gateway: sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 Bewerbung_vollstaendig
      if (_tokenState & 2 == 2) {
        // first conditional
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
        // default
        _tokenState &= ~uint(2);
        _tokenState |= 16;
        continue;
      }
      // Exclusive Gateway: sid-A1DCC015-7407-4D15-80AB-4AC299655E72 (converging)
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // Exclusive Gateway: sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D Bewerbung_ausreichend
      if (_tokenState & 32 == 32) {
        // first conditional
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
        // default
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        continue;
      }
      // Exclusive Gateway: sid-684ECB46-310F-4D15-9C70-6CE7F49A771F (converging)
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}