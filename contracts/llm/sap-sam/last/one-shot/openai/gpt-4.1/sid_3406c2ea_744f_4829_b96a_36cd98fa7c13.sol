// test openai/gpt-4.1 - one-shot at 2025-06-11T23:34:39.112Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_3406c2ea_744f_4829_b96a_36cd98fa7c13 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;
  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_7A6D2EC5_97F9_41C7_AA12_8533B2A978CE Anfrage_stellen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway sid_ADB28F9F_9693_486D_890B_4A1EE4106A01 --->
        // Exclusive Gateway, default: sid_F877CABA_2F55_4604_8A48_869E40B4AB3C (to sid_2B34D3A5_E5DC_4813_B56A_69BA0DDDD357)
        bool matched = false;
        // sid_5C29D388_96A5_4CB6_9F90_306C8C8591A1: from sid_32373B24_9806_40FC_A1E8_E263E51D1057
        // sid_F877CABA_2F55_4604_8A48_869E40B4AB3C: default to sid_2B34D3A5_E5DC_4813_B56A_69BA0DDDD357
        // no conditions, just default
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_2B34D3A5_E5DC_4813_B56A_69BA0DDDD357 Angebot_stellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Gateway sid_F726F0A0_F3A2_4DE5_8DB0_9FB14E37ED3D --->
        // Exclusive Gateway, default: sid_CD293C32_7DDF_4954_A93C_B0D96173267E (to sid_4A1D27ED_C77F_4B5D_99A8_DB09C3577A0E)
        // outgoing: sid_5F56359E_CED9_401D_B259_D1569C2F252B (to sid_033B60DD_1C6E_4D1B_9574_8CD685DEEC42), sid_512F94DA_957A_4366_BFC6_B0D40419F082 (to sid_32373B24_9806_40FC_A1E8_E263E51D1057)
        bool matched = false;
        if (conditions & 1 == 1) {
          // sid_5F56359E_CED9_401D_B259_D1569C2F252B: to sid_033B60DD_1C6E_4D1B_9574_8CD685DEEC42
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          matched = true;
        }
        if (!matched && (conditions & 2 == 2)) {
          // sid_512F94DA_957A_4366_BFC6_B0D40419F082: to sid_32373B24_9806_40FC_A1E8_E263E51D1057
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          matched = true;
        }
        if (!matched) {
          // sid_CD293C32_7DDF_4954_A93C_B0D96173267E: default to sid_4A1D27ED_C77F_4B5D_99A8_DB09C3577A0E
          _tokenState &= ~uint(8);
          _tokenState |= 64;
        }
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_033B60DD_1C6E_4D1B_9574_8CD685DEEC42 Absage_senden --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        // process ends here
        _tokenState = 0;
        break;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_32373B24_9806_40FC_A1E8_E263E51D1057 Anderung_anfragen --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 2; // back to gateway sid_ADB28F9F_9693_486D_890B_4A1EE4106A01
        id = 0;
        continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid_4A1D27ED_C77F_4B5D_99A8_DB09C3577A0E Auftrag_senden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- Gateway sid_C4AE4C53_121B_4BE0_B7EC_2D87282BD352 --->
        // Join gateway (Converging Exclusive), waits for one
        // Only one incoming, just forward
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 256 == 256) {
        // <--- sid_208576A6_E551_4B40_8BFB_180FBB9CA81F Anfrage_stellen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- Gateway sid_F8DDC641_8806_488E_85B1_1D9252C11FC1 --->
        // Exclusive Gateway, default: sid_59004DCB_517B_4F97_96CA_AA40268F7013 (to sid_678F1659_35AA_4CC5_AB06_B1C0AD9F16DD)
        // outgoing: sid_160A28C1_5993_486D_A381_C27683A36D4F (to sid_E39CFE77_E760_4E6D_B257_03502B5BD04F)
        bool matched = false;
        if (conditions & 4 == 4) {
          // sid_160A28C1_5993_486D_A381_C27683A36D4F: to sid_E39CFE77_E760_4E6D_B257_03502B5BD04F
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          matched = true;
        }
        if (!matched) {
          // sid_59004DCB_517B_4F97_96CA_AA40268F7013: default to sid_678F1659_35AA_4CC5_AB06_B1C0AD9F16DD
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
        }
        continue;
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid_E39CFE77_E760_4E6D_B257_03502B5BD04F Verfugbarkeit_absagen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid_678F1659_35AA_4CC5_AB06_B1C0AD9F16DD Verfugbarkeit_bestatigen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid_DFD49704_139E_44DF_8E10_E71080163B76 Auftrag_erstellen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid_5DE29D81_E263_4AF0_8F8B_D6F611C543F5 Grafik_verschicken --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 16384;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- sid_5C840AD1_6813_4439_90B5_2F1C831321E4 Anzeige_ubermitteln --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        // process ends
        _tokenState = 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}