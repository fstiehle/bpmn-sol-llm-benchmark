// test openai/gpt-4.1 - two-shot at 2025-06-12T00:11:53.918Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_1b6a99e6_b701_40a6_8f04_86d715a76648 {
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
      // sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestatigung senden
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // Gateway: sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 Bewerbung vollstandig ?
      // token: 2
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // sid-BF908D03-AB64-4DE5-931B-5CB7F5AF78C7 to sid-63049054-FF0D-448E- A42E-7B917601D74C
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default sid-4069629D-D16A-45C2-9564-95868D56762E to sid-A1DCC015-7407-4D15-80AB-4AC299655E72
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        }
      }
      // Gateway: sid-A1DCC015-7407-4D15-80AB-4AC299655E72 converging
      // token: 16
      if (_tokenState & 16 == 16) {
        // auto transition to sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // Gateway: sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D Bewerbung ausreichend ?
      // token: 32
      if (_tokenState & 32 == 32) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // sid-2F3AC027-22F1-4D6A-8A9B-8146D23D732B to sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default sid-882B8A1A-5E7A-4DF9-BFE5-D0F41C10960F to sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }
      // Gateway: sid-684ECB46-310F-4D15-9C70-6CE7F49A771F converging
      // token: 256
      if (_tokenState & 256 == 256) {
        // auto transition to end
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}