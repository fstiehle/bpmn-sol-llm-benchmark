// test openai/gpt-4.1 - one-shot at 2025-06-11T23:40:46.916Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_50fdb75e_4f74_4806_84e0_861811d72a59 {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_255C7D85_0BDF_41BF_A5AB_FDC3145ACE42 Anmelden in der App --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_45E9AFFD_A781_45E8_8249_C294E338952D Anmeldung fehlgeschlagen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_76CF605B_88C2_46BE_8DB3_549A7296C8CE Anmeldung erfolgreich --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_F3211469_475B_4D44_B145_C8EF46DA9A8A Support_Kontakt_suchen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_0FC3E8D1_B5FC_4BC5_854E_152C01FD4981 Support_anrufen_und_Schaden_melden --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid_882839CF_964B_41C9_BE45_7D9AC768F2A3 Schaden_weiterleiten --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid_D18D1659_6F68_4FF0_ABF4_8D21BA265F5E Fahrrad_Standort_suchen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid_BDDE6538_49E6_4DB2_9687_ED99B467FC25 Schaden_reparieren --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid_CFAC808C_29D8_483A_8C38_C3A475F76D99 Fahrrad_freistellen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid_1E11A6C8_0BFD_4A87_BEE5_C1A0CD1B3511 Fahrrad_in_der_App_sperren --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_DC62831A_AD81_4F38_9E42_1F4C88BA4F92 ExclusiveGateway --->
        // two outgoing: sid-1867B68F-645A-4021-B85D-D1BDF9F4E377 (default: to task 2), sid-D9B2D4A4-95F1-4706-93D3-095E0A61C31F (condition: conditions & 1 == 1 to task 3)
        if (conditions & 1 == 1) {
          // <---  auto transition to sid-76CF605B-88C2-46BE-8DB3-549A7296C8CE --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        } else {
          // <--- default: auto transition to sid-45E9AFFD-A781-45E8-8249-C294E338952D --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}