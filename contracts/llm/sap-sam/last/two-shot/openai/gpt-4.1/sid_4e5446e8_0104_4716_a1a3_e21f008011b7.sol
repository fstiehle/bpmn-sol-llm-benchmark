// test openai/gpt-4.1 - two-shot at 2025-06-12T01:02:09.279Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_4e5446e8_0104_4716_a1a3_e21f008011b7 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {

      // <--- oryx_2D87C0AD_1C70_4B00_90C1_B406D0CB1CAF Bewerbung abschicken --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }

      // <--- oryx_6C8BD963_B2F4_47DB_ADA8_2ADC0ED9B691 Fehlende Unterlagen anfordern --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }

      // <--- oryx_8F147659_7E2E_4F5D_8F4D_EB397F99AD09 Absage zuschicken --->
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }

      // <--- oryx_2CD79A54_4137_492B_87F1_FACBA5D0E864 Zusage zuschicken --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }

      // <--- oryx_A200BA42_EF51_43C1_B019_D226E1AAC1A9 Unterlagen vollstaendig? (exclusive gateway, diverging) --->
      if (_tokenState & 2 == 2) {
        // There are two outgoing flows:
        // 1. oryx_D37D1750_390E_42DE_93A9_5B61B083D4D8 (default): to Fehlende Unterlagen anfordern
        // 2. oryx_2788E20C_8113_458D_9AE2_7110D5DCAC1B (condition: conditions & 1 == 1): to next gateway (oryx_123445D2_24AD_4BB5_9118_0165450B2B3C)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      // <--- oryx_123445D2_24AD_4BB5_9118_0165450B2B3C (exclusive gateway, converging) --->
      // Joins: from Fehlende Unterlagen anfordern (8) and from prev gateway (32)
      if (_tokenState & 8 == 8 || _tokenState & 32 == 32) {
        uint join = (_tokenState & 8 == 8 ? 8 : 0) | (_tokenState & 32 == 32 ? 32 : 0);
        if (join != 0) {
          _tokenState &= ~uint(join);
          _tokenState |= 64;
          continue;
        }
      }

      // <--- oryx_1408DA1A_25EC_418C_9B03_0D7F8037E491 Zusage? (exclusive gateway, diverging) --->
      if (_tokenState & 64 == 64) {
        // 1. oryx_923AB331_AA67_4655_9DBC_4ED9766D1341 (default): to Zusage zuschicken (16)
        // 2. oryx_BFED11E4_31A3_467E_BA8B_D5337D0720E5 (condition: conditions & 2 == 2): to Absage zuschicken (32)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          continue;
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 16;
          continue;
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}
