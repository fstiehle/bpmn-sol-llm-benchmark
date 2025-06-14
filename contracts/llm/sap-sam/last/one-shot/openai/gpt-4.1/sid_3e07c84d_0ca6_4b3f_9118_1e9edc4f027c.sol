// test openai/gpt-4.1 - one-shot at 2025-06-11T23:36:49.812Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_3e07c84d_0ca6_4b3f_9118_1e9edc4f027c {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_1EEA8E35_38D9_4FA1_AD89_1380EF74F425 Slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_7DA2D550_BF2F_4BE1_A17F_72BEFA131839 Dobijanje detaljnog opisa --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // EXCLUSIVE GATEWAY sid_7DEAF8F3_7048_4D51_B790_6A8016EA5D34
      if (_tokenState & 4 == 4) {
        // sid_7DEAF8F3_7048_4D51_B790_6A8016EA5D34
        bool matched = false;
        if (conditions & 1 == 1) {
          // conditions & 1 == 1: to sid_0C6B5BE7_D2C2_48E8_94C3_DE5D1AA9CDFD
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          matched = true;
          continue;
        }
        if (!matched) {
          // default: to sid_77FF34A1_BFC9_406C_B7BC_C8DD53FB2187
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_77FF34A1_BFC9_406C_B7BC_C8DD53FB2187 Slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_0C6B5BE7_D2C2_48E8_94C3_DE5D1AA9CDFD Trazenje resenja --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // EXCLUSIVE GATEWAY sid_EA1AC6C8_B53F_4C26_BA30_5796CA6184D4
      if (_tokenState & 32 == 32) {
        // sid_EA1AC6C8_B53F_4C26_BA30_5796CA6184D4
        bool matched = false;
        if (conditions & 2 == 2) {
          // conditions & 2 == 2: to sid_61410FD0_64FC_4D89_BBAF_C6EDE6861197
          _tokenState &= ~uint(32);
          _tokenState |= 512;
          matched = true;
          continue;
        }
        if (!matched) {
          // default: to sid_2C0C7772_B797_4324_8FB6_4D73E6242CB4
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid_2C0C7772_B797_4324_8FB6_4D73E6242CB4 Trazenje resenja --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid_C7F2CE33_2A7A_4B81_BF90_98D5373BC5B5 Slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid_61410FD0_64FC_4D89_BBAF_C6EDE6861197 Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}