// test openai/gpt-4.1 - one-shot at 2025-06-11T23:40:13.377Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_4f03bfac_6870_4951_8bba_a7e16355e589 {
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
      // <--- sid-83CB8E6A_7855_491F_ACE4_5568B085B0AA Fragt Werbeanzeige an --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-2C45C0B5_E718_4493_9F12_EA484F4A9002 Sendet Angebot --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // <--- sid-155E169F_4D9C_43D8_AEBD_812EE590BBAE Fragt Verfugbarkeit an --->
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // <--- sid-CC8C53B3_1170_4020_887C_0A8DD1833C47 aeußert Anderungswunsch --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task
          _tokenState &= ~uint(16);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // <--- sid-ACFEBAF1_ED9D_4EEC_82A4_E17E3BABF1A3 erteilt Auftrag --->
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for task
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // <--- sid-9FD7CD92_886A_45AE_8B0D_11B419B780F8 Absage erteilt --->
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
          // custom code for task
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-582D082F_E935_4D39_8D4F_684C36A51CD9 erteilt Auftrag --->
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
          // custom code for task
          _tokenState &= ~uint(128);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // <--- sid-B2528142_9302_43B2_AB89_491A0232D7AF erfragt Freigabe --->
      if (_tokenState & 4096 == 4096) {
        if (8 == id && msg.sender == participants[14]) {
          // custom code for task
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      // <--- sid-5A5EEB58_D5C0_4F44_AD9E_253CA3C6EA66 liefert Grafik --->
      if (_tokenState & 16384 == 16384) {
        if (9 == id && msg.sender == participants[16]) {
          // custom code for task
          _tokenState &= ~uint(16384);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // <--- sid-7AEEA2EE_8510_42E5_9332_EE09CBBC71AE Erteilt Freigabe --->
      if (_tokenState & 32768 == 32768) {
        if (10 == id && msg.sender == participants[18]) {
          // custom code for task
          _tokenState &= ~uint(32768);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-7A4631E5_4035_4BC3_B06D_F0185FA000A3 sendet Anderungswunsch --->
      if (_tokenState & 65536 == 65536) {
        if (11 == id && msg.sender == participants[20]) {
          // custom code for task
          _tokenState &= ~uint(65536);
          _tokenState |= 16384;
          id = 0;
          continue;
        }
      }
      // <--- Gateway sid-CCEF2766_393D_48DF_9A7E_3B65934F37F4 (Converging) --->
      if (_tokenState & 2 == 2) {
        // sid-C2FE5E59_76ED_4E28_93D7_89CD9CA706E6
        // sid-3A77523A_429C_4B52_84AA_0941E4010EF0
        // Both flows must be complete to continue
        if ((_tokenState & 2) == 2) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- Gateway sid-3548761B_AF17_48B9_B2F6_893FFCF1C9E5 (Diverging) --->
      if (_tokenState & 8 == 8) {
        bool matched = false;
        // sid-8155BF40_71BB_4EE4_B98D_996167FBF914 (moechte Anderung)
        if (!matched && (conditions & 1 == 1)) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          matched = true;
        }
        // sid-0680734C_06D5_4930_ABFB_5786FC41DA8F (conditions & 1 == 1)
        else if (!matched && (conditions & 1 == 1)) {
          _tokenState &= ~uint(8);
          _tokenState |= 1024;
          matched = true;
        }
        // sid-1A86CCB0_5463_4962_A298_79F06E8E84D5 (conditions & 2 == 2)
        else if (!matched && (conditions & 2 == 2)) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          matched = true;
        }
        // default: sid-8155BF40_71BB_4EE4_B98D_996167FBF914
        if (!matched) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        }
        continue;
      }
      // <--- Gateway sid-6D663699_99E8_4687_A101_4E208D28D935 (Converging) --->
      if (_tokenState & 2048 == 2048) {
        // sid-0079DB7C_524F_48EF_BF38_633016268F50
        // sid-BF9D2D0E_EB41_4B92_8A5D_1913F4E18CBF
        if ((_tokenState & 2048) == 2048) {
          _tokenState &= ~uint(2048);
          _tokenState |= 16384;
          continue;
        }
      }
      // <--- Gateway sid-60A13C3B_4A44_4D3B_8604_D291100B2679 (Diverging) --->
      if (_tokenState & 8192 == 8192) {
        bool matched = false;
        // sid-8EDB9FAA_3B3C_407F_B0E5_93246B74F6AE (Grafik ok)
        if (!matched) {
          _tokenState &= ~uint(8192);
          _tokenState |= 32768;
          matched = true;
        }
        // sid-C19CC792_BCCB_4DDA_8CEB_6EE98CDD8336 (conditions & 4 == 4)
        else if (!matched && (conditions & 4 == 4)) {
          _tokenState &= ~uint(8192);
          _tokenState |= 65536;
          matched = true;
        }
        // default: sid-8EDB9FAA_3B3C_407F_B0E5_93246B74F6AE
        if (!matched) {
          _tokenState &= ~uint(8192);
          _tokenState |= 32768;
        }
        continue;
      }
      // <--- Gateway sid-6D663699_99E8_4687_A101_4E208D28D935 (Converging) --->
      // Already handled above.
      // <--- Gateway sid-CCEF2766_393D_48DF_9A7E_3B65934F37F4 (Converging) --->
      // Already handled above.
      // <--- Parallel Gateway sid-155E169F_4D9C_43D8_AEBD_812EE590BBAE (Join/Split) --->
      // There is no parallel gateway in the classic sense; all splits/joins are via sequence flow and gateways above.
      break;
    }
    tokenState = _tokenState;
  }
}