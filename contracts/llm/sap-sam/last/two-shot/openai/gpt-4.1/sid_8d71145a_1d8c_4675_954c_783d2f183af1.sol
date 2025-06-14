// test openai/gpt-4.1 - two-shot at 2025-06-12T01:41:49.812Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
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
    while(_tokenState != 0) {
      // <--- oryx_17BDCD00_2EF4_4300_9B41_89E99AB80C1E Bewerbung abschicken --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- oryx_D2B4F66F_E45A_4EE5_BA1E_19823BBCB8C4 fehlende Unterlagen anfordern --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- oryx_AF21D2E5_26A2_4BDA_A13A_3505624B4560 Zusage versenden --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- oryx_27A367A7_12ED_4EC6_BEDA_3DFD1B6BBA81 Absage versenden --->
      if (_tokenState & 128 == 128) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
        }
      }
      // <--- oryx_30B3598E_DF0D_402D_BD8A_BC8236E8E422 Immatrikulationsunterlagen versenden --->
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // <--- oryx_CAAC4136_6550_45D4_B9FF_DA7123ABC114 fehlende Unterlagen nachschicken --->
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // <--- Gateway oryx_7DDDABBB_2A98_4667_BB99_A3F3F5C8D9D4 (diverge) --->
      if (_tokenState & 2 == 2) {
        bool didTransition = false;
        if (!didTransition && (conditions & 1 == 1)) {
          // conditions & 1 == 1 -> oryx_D2B4F66F_E45A_4EE5_BA1E_19823BBCB8C4
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default -> oryx_5C25C2F4_2009_4959_99FB_C24B1A927205
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- Gateway oryx_417481F9_A398_4067_BC4E_6B994FF3EF11 (diverge) --->
      if (_tokenState & 64 == 64) {
        bool didTransition = false;
        if (!didTransition && (conditions & 8 == 8)) {
          // conditions & 8 == 8 -> oryx_8F38EF2C_B6DB_402D_8C9B_4B94B56A19B7
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default -> oryx_CAAC4136_6550_45D4_B9FF_DA7123ABC114
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          continue;
        }
      }
      // <--- Gateway oryx_5C25C2F4_2009_4959_99FB_C24B1A927205 (converge) --->
      if (_tokenState & 8 == 8) {
        // auto transition
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }
      // <--- Gateway oryx_60CE99B5_A212_47B8_8A4D_C87D3F0DD799 (diverge) --->
      if (_tokenState & 16 == 16) {
        bool didTransition = false;
        if (!didTransition && (conditions & 2 == 2)) {
          // conditions & 2 == 2 -> oryx_8F38EF2C_B6DB_402D_8C9B_4B94B56A19B7
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default -> oryx_AF21D2E5_26A2_4BDA_A13A_3505624B4560
          _tokenState &= ~uint(16);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- Gateway oryx_8F38EF2C_B6DB_402D_8C9B_4B94B56A19B7 (converge) --->
      if (_tokenState & 128 == 128) {
        // auto transition
        _tokenState &= ~uint(128);
        _tokenState |= 128;
        continue;
      }
      // <--- Gateway oryx_C30C3A12_7A31_4C23_9FDC_6F5E501D1939 (diverge) --->
      if (_tokenState & 256 == 256) {
        bool didTransition = false;
        if (!didTransition && (conditions & 4 == 4)) {
          // conditions & 4 == 4 -> oryx_30B3598E_DF0D_402D_BD8A_BC8236E8E422
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default -> oryx_A37F2E87_C324_404F_9D19_5E34AFC5C86A
          _tokenState &= ~uint(256);
          _tokenState |= 2048;
          continue;
        }
      }
      // <--- Gateway oryx_A37F2E87_C324_404F_9D19_5E34AFC5C86A (converge) --->
      if (_tokenState & 2048 == 2048) {
        // auto transition
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break;
      }
      // <--- Gateway oryx_5C25C2F4_2009_4959_99FB_C24B1A927205 (converge) after fehlende Unterlagen nachschicken --->
      if (_tokenState & 8 == 8) {
        // auto transition
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }
      // <--- Gateway oryx_417481F9_A398_4067_BC4E_6B994FF3EF11 (diverge) after fehlende Unterlagen anfordern --->
      if (_tokenState & 64 == 64) {
        bool didTransition = false;
        if (!didTransition && (conditions & 8 == 8)) {
          // conditions & 8 == 8 -> oryx_8F38EF2C_B6DB_402D_8C9B_4B94B56A19B7
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default -> oryx_CAAC4136_6550_45D4_B9FF_DA7123ABC114
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}