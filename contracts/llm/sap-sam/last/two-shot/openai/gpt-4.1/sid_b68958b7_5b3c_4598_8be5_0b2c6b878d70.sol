// test openai/gpt-4.1 - two-shot at 2025-06-12T02:01:42.457Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-6E7BC75D_207E_4D80_9AE8_CD7A71E4F01A Anfrage auf Reparatur stellen / Produkt an reBuy senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-EDC95EBB_1DB2_45EB_B9F1_DE20B008C455 Pruefung ob es sich um einen Garantiefall handelt --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-25AA23A0_E09A_4708_8B06_8184876E4159 Kunde erhaelt Geraet zurueck erhaelt eine Absage --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-492CD1C4_81EB_4B4B_B3C1_7BF00708AE5D Support nimmt sich dem defekten Geraet an Garantiefall bewilligt --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-2D44CA56_2A4B_4959_B2A0_7326289F57BD Anfrage an Reparaturdienst Pruefung ob Geraet reparierbar ist --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-C0F110DA_170A_4626_816B_1BFAC6FD1E50 Ablehnung Geraet ist irreparabel defekt --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-D8CFBA70_4C1A_4408_94A2_D5DB6A9AEC25 Geraet reparieren lassen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-350EC8A3_700F_46EC_AC45_0F67663518EC Kunde erhaelt Kaufbetrag zurueckerstattet --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-9A2B984C_85DA_4FDA_A60A_8CDAA4B4F902 Reparatur erfolgreich Produkt kann zurueck gesendet werden --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway sid-6BFA1C27_514B_4C3B_A065_8B951BB1657C Garantiefall?
      if (_tokenState & 4 == 4) {
        bool matched = false;
        if (conditions & 1 == 1) {
          // sequenceFlow sid-BA961A8C_2A98_45E7_809D_8F1E3B68B651
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          matched = true;
          continue;
        }
        if (!matched) {
          // default sid-10D89131_701C_4F00_9D0D_A581962B2928
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // Exclusive Gateway sid-2D954C33_5DAD_4D1D_928B_6B68D081BCEC reparierbar?
      if (_tokenState & 64 == 64) {
        bool matched = false;
        if (conditions & 2 == 2) {
          // sequenceFlow sid-4AB0F485_2C68_465A_BF95_4F268E2B28C2
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          matched = true;
          continue;
        }
        if (!matched) {
          // default sid-68B4895F_9E4E_4BA3_96F0_AD15C68E4945
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      // Auto transition: sid-61A5EDD8_5D2D_4CD8_9AF7_7D5EDF6BD763
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }
      // Auto transition: sid-2887DF08_DFA3_4A5A_8481_C63B3F106AC8
      if (_tokenState & 128 == 128) {
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        continue;
      }
      // Auto transition: sid-694F7EBC_8591_401E_ACC3_2A152B3718AD
      if (_tokenState & 512 == 512) {
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      // Auto transition: sid-026131CD_6856_4EA1_8BF0_6D3E54A790A4
      if (_tokenState & 2048 == 2048) {
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break;
      }
      // Auto transition: sid-66B6441D_E60C_40B3_873A_A31A64E78969
      if (_tokenState & 4096 == 4096) {
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break;
      }
      // Auto transition: sid-57EDF499_B20E_4D37_8036_8FEE06B5B018
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}