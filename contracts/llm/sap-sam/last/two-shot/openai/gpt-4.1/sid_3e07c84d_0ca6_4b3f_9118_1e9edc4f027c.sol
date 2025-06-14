// test openai/gpt-4.1 - two-shot at 2025-06-12T00:58:07.688Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_3e07c84d_0ca6_4b3f_9118_1e9edc4f027c {
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
        // <--- sid-1EEA8E35_38D9_4FA1_AD89_1380EF74F425 Slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-7DA2D550_BF2F_4BE1_A17F_72BEFA131839 Dobijanje detaljnog opisa --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-77FF34A1_BFC9_406C_B7BC_C8DD53FB2187 Slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-0C6B5BE7_D2C2_48E8_94C3_DE5D1AA9CDFD Trazenje resenja --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-61410FD0_64FC_4D89_BBAF_C6EDE6861197 Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-2C0C7772_B797_4324_8FB6_4D73E6242CB4 Trazenje resenja --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-C7F2CE33_2A7A_4B81_BF90_98D5373BC5B5 Slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // <--- Gateway sid-7DEAF8F3_7048_4D51_B790_6A8016EA5D34 Operater zna da resi? --->
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // "conditions & 1 == 1" branch (sid-0405741D-0505-4C36-A8C9-98F7413D1769)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default branch (sid-01CF4B67-D27B-474E-8351-9CDA1BF1284A)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- Gateway sid-EA1AC6C8_B53F_4C26_BA30_5796CA6184D4 Podrska I nivao zna da resi --->
      if (_tokenState & 32 == 32) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // "conditions & 2 == 2" branch (sid-AB7CCC83-4068-4E97-877D-64412180A03E)
          _tokenState &= ~uint(32);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default branch (sid-FE38615B-DDB4-46B2-8FF9-4DB6B8724EB3)
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}