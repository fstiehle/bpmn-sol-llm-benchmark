// test openai/gpt-4.1 - two-shot at 2025-06-12T20:41:28.621Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_8fa161ac_b189_4cd4_a56c_f60e324a593e {
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
      // --- sid-DC738A66-7525-4C02-99D0-E48FC804756A slanje_problema ---
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // custom task logic here
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // --- sid-34874B10-2120-4641-85D3-7DA5014FE9FD opisivanje_problema ---
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // custom task logic here
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // --- sid-EB288683-8547-4DA6-BDC0-A1AE5A38734D konsultovanje_PPN ---
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // custom task logic here
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // --- sid-556F6605-D15D-4916-BBF5-006F8307FA38 slanje_opisa_problema ---
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
        // custom task logic here
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // --- sid-45AEC8AE-290B-4570-B253-51A903050093 slanje_resenja_i_objasnjenja ---
      if (_tokenState & 64 == 64) {
        if (7 == id && msg.sender == participants[13]) {
        // custom task logic here
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // --- sid-598E252E-B2A2-40AA-AB49-CD70F467EF44 slanje_resenja ---
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[9]) {
        // custom task logic here
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // --- sid-49E97E55-D6C3-4E09-879F-677795D88F23 slanje_resenja ---
      if (_tokenState & 1024 == 1024) {
        if (3 == id && msg.sender == participants[5]) {
        // custom task logic here
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break;
        }
      }
      // -- ExclusiveGateway sid-434BA095_2193_4B16_9326_08C37AF51696 zna_da_resi_problem --
      if (_tokenState & 4 == 4) {
        bool matched = false;
        if (conditions & 1 == 1) {
          // cond. sid-0CABC21D_9F55_4DF7_8084_79A1022BACE1 to sid-2646D70F_DA7D_4716_9A85_445B4BCE7179
          _tokenState &= ~uint(4);
          _tokenState |= 2048;
          matched = true;
          continue;
        }
        if (!matched) {
          // default sid-8A6F257D_CE1F_4B15_82CD_AB4DD06200C2 to sid-EB288683_8547_4DA6_BDC0_A1AE5A38734D
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // -- sid-2646D70F-DA7D-4716-9A85-445B4BCE7179 (converging gateway) --
      if (_tokenState & 2048 == 2048) {
        // converges sid-0CABC21D_9F55_4DF7_8084_79A1022BACE1 (from exclusive) and sid-AB9BEBE4_E83D_480F_8F7F_24EAB84F7717 (from slanje_resenja)
        _tokenState &= ~uint(2048);
        _tokenState |= 1024;
        continue;
      }
      // -- sid-C89B3DFB-38A4-4171-8A9B-C3629916A230 zna_da_resi_problem (exclusive) --
      if (_tokenState & 16 == 16) {
        bool matched = false;
        if (conditions & 2 == 2) {
          // cond. sid-B9F7A7F0_B25C_4DCF_BE4B_B33B50841655 to sid-556F6605_D15D_4916_BBF5_006F8307FA38
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          matched = true;
          continue;
        }
        if (!matched) {
          // default sid-B32B4D08_5943_4187_92E7_BADCB381595C to sid-4359BAC5_CC2E_4DCD_894B_42629D9ADBEA
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          continue;
        }
      }
      // -- sid-4359BAC5-CC2E-4DCD-894B-42629D9ADBEA (converging gateway) --
      if (_tokenState & 128 == 128) {
        // converges sid-B32B4D08_5943_4187_92E7_BADCB381595C (from exclusive) and sid-72227F32_D624_4241_BC98_C9C683418D0F (from slanje_resenja_i_objasnjenja)
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      // -- sid-4359BAC5-CC2E-4DCD-894B-42629D9ADBEA (converging gateway) after sid-72227F32_D624_4241_BC98_C9C683418D0F
      if (_tokenState & 128 == 128) {
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      // -- sid-2646D70F-DA7D-4716-9A85-445B4BCE7179 (converging) after sid-AB9BEBE4_E83D_480F_8F7F_24EAB84F7717
      if (_tokenState & 2048 == 2048) {
        _tokenState &= ~uint(2048);
        _tokenState |= 1024;
        continue;
      }
      // -- sid-AB9BEBE4-E83D-480F-8F7F-24EAB84F7717 (auto transition) from sid-598E252E_B2A2_40AA_AB49_CD70F467EF44 to sid-2646D70F_DA7D_4716_9A85_445B4BCE7179
      if (_tokenState & 512 == 512) {
        _tokenState &= ~uint(512);
        _tokenState |= 2048;
        continue;
      }
      // -- sid-EE6D4661-D4CA-4FF8-8AFF-60209A682A30 (auto transition) from sid-EB288683_8547_4DA6_BDC0_A1AE5A38734D to sid-C89B3DFB_38A4_4171_8A9B_C3629916A230
      if (_tokenState & 16 == 16) {
        // already handled above
        break;
      }
      // -- sid-8A6F257D-CE1F-4B15-82CD-AB4DD06200C2 (auto) from exclusive gateway to konsultovanje_PPN
      // handled in exclusive gateway logic
      // -- sid-0ABF84B7-F32A-4318-9694-55032F97C3CB (auto) from slanje_opisa_problema to slanje_resenja_i_objasnjenja
      if (_tokenState & 64 == 64) {
        // already handled above
        break;
      }
      // -- sid-72227F32-D624-4241-BC98-C9C683418D0F (auto) from slanje_resenja_i_objasnjenja to sid-4359BAC5_CC2E_4DCD_894B_42629D9ADBEA
      if (_tokenState & 128 == 128) {
        // already handled above
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}