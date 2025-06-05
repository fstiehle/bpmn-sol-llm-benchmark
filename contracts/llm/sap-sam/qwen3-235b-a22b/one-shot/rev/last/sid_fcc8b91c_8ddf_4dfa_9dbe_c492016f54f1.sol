// test GPT 4.1 - One Shot Revised at 2025-06-05T15:28:18.740Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_rev_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
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

    while (_tokenState != 0) {

      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestätigung senden --->
        if (0 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 Bewerbung vollständig ? --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern --->
        if (1 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken --->
        if (2 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          _tokenState |= 8;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // <--- ExclusiveGateway sid-A1DCC015-7407-4D15-80AB-4AC299655E72 --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        continue;
      }

      if (_tokenState & 32 == 32) {
        // <--- ExclusiveGateway sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D Bewerbung ausreichend ? --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden --->
        if (3 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }

      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden --->
        if (4 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }

      if (_tokenState & 256 == 256) {
        // <--- ExclusiveGateway sid-684ECB46-310F-4D15-9C70-6CE7F49A771F --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
      }

      break;
    }

    tokenState = _tokenState;
  }
}