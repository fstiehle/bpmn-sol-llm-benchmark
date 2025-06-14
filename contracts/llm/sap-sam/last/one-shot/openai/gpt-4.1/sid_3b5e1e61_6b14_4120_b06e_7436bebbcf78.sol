// test openai/gpt-4.1 - one-shot at 2025-06-11T23:36:37.342Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_3b5e1e61_6b14_4120_b06e_7436bebbcf78 {
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
    while (_tokenState != 0) {
      // <--- sid-94F70433_8341_46E2_BDF2_4618E585F5BF TAKE ORDER --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
          // <--- custom code for TAKE_ORDER here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-BEA42E4E_8B88_4FFE_BB71_CE36365C328F RECEIVE ORDER --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for RECEIVE_ORDER here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway: sid-AB9344BF_BDEE_478F_9F85_1838E22FCA17
      if (_tokenState & 4 == 4) {
        bool matched = false;
        // sid-2ADF0174_B696_4AF9_B190_CE6FB4D373D3: conditions & 1 == 1 -> sid-9220F603_B5F1_4BEB_99A8_BF4786E5CD37
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          matched = true;
          continue;
        }
        // default: sid-7088DFDC_1D7F_4AF7_B59E_00259C0C9BFF -> sid-C0851B6B_257A_46E5_A1D0_866B5BC469AD
        if (!matched) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- sid-C0851B6B_257A_46E5_A1D0_866B5BC469AD PREPARE ORDER --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for PREPARE_ORDER here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-9220F603_B5F1_4BEB_99A8_BF4786E5CD37 RECEIVE ORDER --->
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for RECEIVE_ORDER here --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // <--- sid-C379B774_4A75_45FB_90E2_803FCA4E186B SERVE ORDER --->
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for SERVE_ORDER here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // <--- sid-2F7E36B3_59B6_4382_8BD1_91129722202E ASSESS PREPARED ORDER --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for ASSESS_PREPARED_ORDER here --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway: sid-B4CD4217_5C75_403F_BB21_36AC69ED9243
      if (_tokenState & 256 == 256) {
        bool matched = false;
        // sid-4E6DD272_399E_4836_B5A3_004B381C1ADA: conditions & 2 == 2 -> sid-C379B774_4A75_45FB_90E2_803FCA4E186B
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(256);
          _tokenState |= 32;
          matched = true;
          continue;
        }
        // default: sid-A6C9FA80_1284_49AA_B41F_454F1F405573 -> sid-9220F603_B5F1_4BEB_99A8_BF4786E5CD37
        if (!matched) {
          _tokenState &= ~uint(256);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- sid-3A161C1A_E002_42B1_8D32_B26788B81967 RECEIVE ORDER --->
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for RECEIVE_ORDER here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}