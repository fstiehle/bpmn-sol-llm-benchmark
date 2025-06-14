// test openai/gpt-4.1 - one-shot at 2025-06-11T23:27:55.816Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_21aac2de_d691_4d66_8b8f_709c14cb84c4 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // Task 1: sid_06D8F2D0_6BD1_4AF1_B057_F2BDF456D669 (Anderung senden)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task 1 here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Parallel Split: sid_C0AFA4ED_0702_4751_8DF3_2C8A14C92959
      if (_tokenState & 2 == 2) {
        // parallel split: two outgoing, activates sid_A06E9F8A_1AFE_44B0_B216_2031CB8BE358 (bit 4) and sid_03DBAEBA_74CD_4B04_BD71_F56E32E84F02 (bit 8)
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // Task 2: sid_A06E9F8A_1AFE_44B0_B216_2031CB8BE358 (Vorschlag bearbeiten, Lager)
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[3]) {
          // custom code for task 2 here
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 3: sid_03DBAEBA_74CD_4B04_BD71_F56E32E84F02 (Vorschlag bearbeiten, Planung)
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
          // custom code for task 3 here
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Parallel Join: sid_1133F5B6_D5E3_45A1_B3AA_C41BC9AAA7D5 (wait for bits 32 and 64)
      if (_tokenState & 96 == 96) {
        // after both 32 and 64 are set
        _tokenState &= ~uint(96);
        _tokenState |= 128;
        continue;
      }
      // Exclusive Gateway: sid_081E9232_C01C_420D_A833_6C22805EF577
      if (_tokenState & 128 == 128) {
        // two outgoing: sid_CB40259E_39A0_45AC_B227_8AA8C2C37CC5 (Nein, to sid_24729521_9EAE_4157_8A7A_D2C60B7B8FF7) and sid_A2833AF7_F543_402E_8DBD_7D246B59B07B (conditions & 1 == 1, to end)
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // go to end event (process terminates)
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          didTransition = true;
          break; // process ends
        }
        if (!didTransition) {
          // default: go to sid_24729521_9EAE_4157_8A7A_D2C60B7B8FF7 (bit 256)
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }
      // Task 4: sid_24729521_9EAE_4157_8A7A_D2C60B7B8FF7 (Verhandlung ueber Meeting, Produktion)
      if (_tokenState & 256 == 256) {
        if (4 == id && msg.sender == participants[7]) {
          // custom code for task 4 here
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway: sid_F759C76E_18F3_4988_9440_EC54330EC30C
      if (_tokenState & 512 == 512) {
        // two outgoing: sid_A811AAC6_2F49_47DF_B6FA_643F6855EA6C (Ja, to end), sid_C15A8436_8556_49F9_917E_672D1DFCFA77 (conditions & 2 == 2, to sid_F8A4FB9C_08D5_433D_8DA5_4990DE96F98E)
        bool didTransition2 = false;
        if (conditions & 2 == 2) {
          // go to sid_F8A4FB9C_08D5_433D_8DA5_4990DE96F98E (bit 1024)
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          didTransition2 = true;
          continue;
        }
        if (!didTransition2) {
          // default: go to end event (process terminates)
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // process ends
        }
      }
      // Task 5: sid_F8A4FB9C_08D5_433D_8DA5_4990DE96F98E (Geschaeftsfuehrer informieren, Produktion)
      if (_tokenState & 1024 == 1024) {
        if (5 == id && msg.sender == participants[10]) {
          // custom code for task 5 here
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // process ends
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
