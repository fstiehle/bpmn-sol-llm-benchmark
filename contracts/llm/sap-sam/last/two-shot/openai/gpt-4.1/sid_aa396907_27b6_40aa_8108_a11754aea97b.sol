// test openai/gpt-4.1 - two-shot at 2025-06-12T01:59:15.450Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_aa396907_27b6_40aa_8108_a11754aea97b {
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
        // <--- sid-5D37CC23_426B_4F2E_8782_083054937AC4 slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-564CE9B7_7424_442C_BFEC_D117D25F229A dobijanje detaljnog opisa --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway: sid-4E49CB66_5CF5_4962_A149_7FD9E55A8F0E
      if (_tokenState & 4 == 4) {
        bool matched = false;
        // conditions & 1 == 1 --> sid-664F8FC2_4AAE_43F8_91F8_4567524590BA
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          matched = true;
          continue;
        }
        // default: sid-A3FBF911_AE8D_4C25_A14C_27F8EDEC3915
        if (!matched) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-664F8FC2_4AAE_43F8_91F8_4567524590BA slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-A3FBF911_AE8D_4C25_A14C_27F8EDEC3915 trazenje resenja --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway: sid-950997B7_A897_4011_841F_128DF26B6871
      if (_tokenState & 32 == 32) {
        bool matched = false;
        // conditions & 2 == 2 --> sid-8BF7FEB7_F264_48B3_80BB_075108F3D6D1
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          matched = true;
          continue;
        }
        // default: sid-D9B2FF79_A8A5_4E10_A866_B810A62171C8
        if (!matched) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-D9B2FF79_A8A5_4E10_A866_B810A62171C8 salje resnje --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-8BF7FEB7_F264_48B3_80BB_075108F3D6D1 trazenje resenja --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-AE5C4B6F_9132_4CAA_B63C_8C09457134A3 slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
