// test openai/gpt-4.1 - one-shot at 2025-06-11T23:32:05.711Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2cf50df2_68c4_477e_b837_0e10d6d199d8 {
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
        // <--- sid_0F2070B8_DDC3_4F7D_9648_D753C5258B1E Artikel auswaehlen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_DA50E053_B8DC_4AE4_AE8C_B1EDDFC09F7F Pruefung Artikel vorraetig --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_4E91FEDA_E6C0_4F29_908A_58E7228A290D Anschrift eingeben --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_1C93F643_B734_443F_91B2_3C975BD930BB Daten ueberpruefen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_22A01FBB_1AA7_4730_B91B_EF9F65C9FD61 Bestellung absenden --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_2B1F6198_4A74_449D_8BF5_AFADBE91BB8F Rechnung senden --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid_C4535344_53A0_4C08_8F27_335E8D18DCB6 Rechnung bezahlen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid_4492D3D8_A38C_4BFE_878E_5E997A891AE3 Artikel versenden --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid_FF598238_0855_40B9_BEB2_6788E45C12C0 Artikel erhalten --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}