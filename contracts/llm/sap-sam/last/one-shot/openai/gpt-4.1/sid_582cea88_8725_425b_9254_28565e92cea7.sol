// test openai/gpt-4.1 - one-shot at 2025-06-11T23:42:18.964Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_582cea88_8725_425b_9254_28565e92cea7 {
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
      // --- sid-1A1E8E50-B672-4475-B6FD-5DEA9B1225EC send_Credit_Card_Application ---
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // custom code for send Credit Card Application
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // --- sid-8FF1ED8F-5296-456F-A095-9C13C881D5D1 send_Credt_File_request ---
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // custom code for send Credt File request
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // --- sid-D68AD0BC-AE79-411E-A3E0-5B6EF2DC32E1 send_Credit_File ---
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
        // custom code for send Credit File
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // --- sid-04D38013-6E3C-4B41-ABB6-7322759E40D7 send_Application_rejection ---
      if (_tokenState & 128 == 128) {
        if (4 == id && msg.sender == participants[6]) {
        // custom code for send Application rejection
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
        }
      }
      // --- sid-2C0F233E-EB17-4C7B-8E3A-02D33BA6BDA2 send_Application_Acceptance ---
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[8]) {
        // custom code for send Application Acceptance
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
        }
      }
      // --- Exclusive Gateway: sid-9D500E37_A113_4014_B70C_F3B21B1F5167 Applicant_suitable ---
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // sid-FA31A748_B780_4185_81F8_A5359482E60D (to sid-87F0D9F7_EA85_4767_B907_3BDD069B1AC8)
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          transitioned = true;
        }
        if (!transitioned) {
          // default: sid-370480D9_1B27_457D_A30F_2967DA9121DE (to sid-8FF1ED8F_5296_456F_A095_9C13C881D5D1)
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      // --- Exclusive Gateway: sid-C9868726_531B_42B7_ADD1_EBF992BE647C Credit_Card_eligable ---
      if (_tokenState & 16 == 16) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // sid-13DA1567_1715_4326_BEC4_43C5699837D2 (to sid-87F0D9F7_EA85_4767_B907_3BDD069B1AC8)
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          transitioned = true;
        }
        if (!transitioned) {
          // default: sid-88E1ED7C_3959_43D2_B2E2_AE4A10FEA13A (to sid-2C0F233E_EB17_4C7B_8E3A_02D33BA6BDA2)
          _tokenState &= ~uint(16);
          _tokenState |= 256;
        }
        continue;
      }
      // --- Exclusive Gateway: sid-87F0D9F7_EA85_4767_B907_3BDD069B1AC8 converging ---
      if (_tokenState & 32 == 32) {
        // auto transition, only one outgoing sid-5C158985_C342_46A2_823F_A52C51A2DA28 to sid-04D38013_6E3C_4B41_ABB6_7322759E40D7
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}