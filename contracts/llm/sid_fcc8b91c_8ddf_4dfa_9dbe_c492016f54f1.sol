// Created by qwen3-14b at 2025-05-30T15:33:46.128Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LLM_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }

  function setconditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestätigung senden --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway_C03C28F6-BD2B-46DC-BE33-9AAF77C48157 Bewerbung vollständig ? --->
        if (conditions & 1 == 1) {
          // <--- auto transition to sid-4069629D-D16A-45C2-9564-95868D56762E --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          // <--- auto transition to sid-BF908D03-AB64-4DE5-931B-5CB7F5AF78C7 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ExclusiveGateway_A1DCC015-7407-4D15-80AB-4AC299655E72 --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- ExclusiveGateway_834869E9-BC7C-41F5-8A4E-FD7DC06D693D Bewerbung ausreichend ? --->
        if (conditions & 1 == 1) {
          // <--- auto transition to sid-2F3AC027-22F1-4D6A-8A9B-8146D23D732B --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          // <--- auto transition to sid-882B8A1A-5E7A-4DF9-BFE5-D0F41C10960F --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ExclusiveGateway_684ECB46-310F-4D15-9C70-6CE7F49A771F --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // end of process
      }
      break;
    }

    tokenState = _tokenState;
  }
}