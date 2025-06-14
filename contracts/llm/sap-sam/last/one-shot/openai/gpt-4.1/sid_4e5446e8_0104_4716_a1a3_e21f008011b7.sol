// test openai/gpt-4.1 - one-shot at 2025-06-11T23:39:45.327Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_4e5446e8_0104_4716_a1a3_e21f008011b7 {
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
      // <--- oryx_2D87C0AD_1C70_4B00_90C1_B406D0CB1CAF Bewerbung_abschicken --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for Bewerbung_abschicken here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- Gateway: oryx_A200BA42_EF51_43C1_B019_D226E1AAC1A9 (Unterlagen_vollstaendig) --->
      if (_tokenState & 2 == 2) {
        // Two outgoing: oryx_D37D1750_390E_42DE_93A9_5B61B083D4D8 (default: ja) and oryx_2788E20C_8113_458D_9AE2_7110D5DCAC1B (conditions & 1 == 1)
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // oryx_2788E20C_8113_458D_9AE2_7110D5DCAC1B --> oryx_123445D2_24AD_4BB5_9118_0165450B2B3C
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          transitioned = true;
        }
        if (!transitioned) {
          // default flow oryx_D37D1750_390E_42DE_93A9_5B61B083D4D8 --> oryx_6C8BD963_B2F4_47DB_ADA8_2ADC0ED9B691
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      // <--- oryx_6C8BD963_B2F4_47DB_ADA8_2ADC0ED9B691 Fehlende_Unterlagen_anforderung --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for Fehlende_Unterlagen_anforderung here
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // <--- Gateway: oryx_123445D2_24AD_4BB5_9118_0165450B2B3C (converging) --->
      if (_tokenState & 16 == 16) {
        // Only one outgoing: oryx_34ABB867_EC26_42AD_B5D3_E27AA4ACEFBC --> oryx_1408DA1A_25EC_418C_9B03_0D7F8037E491
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // <--- Gateway: oryx_1408DA1A_25EC_418C_9B03_0D7F8037E491 (Zusage) --->
      if (_tokenState & 32 == 32) {
        // Outgoing: oryx_923AB331_AA67_4655_9DBC_4ED9766D1341 (default: ja) and oryx_BFED11E4_31A3_467E_BA8B_D5337D0720E5 (conditions & 2 == 2)
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // oryx_BFED11E4_31A3_467E_BA8B_D5337D0720E5 --> oryx_8F147659_7E2E_4F5D_8F4D_EB397F99AD09
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          transitioned = true;
        }
        if (!transitioned) {
          // default flow oryx_923AB331_AA67_4655_9DBC_4ED9766D1341 --> oryx_2CD79A54_4137_492B_87F1_FACBA5D0E864
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
      }
      // <--- oryx_8F147659_7E2E_4F5D_8F4D_EB397F99AD09 Absage_zuschicken --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for Absage_zuschicken here
          _tokenState &= ~uint(8);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // <--- oryx_2CD79A54_4137_492B_87F1_FACBA5D0E864 Zusage_zuschicken --->
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for Zusage_zuschicken here
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // <--- Gateway: oryx_E0381DB8_7BB7_4E7A_82D8_A815F98A2003 (converging) --->
      if (_tokenState & 128 == 128) {
        // Only one outgoing: oryx_F95C4158_8FD1_44D0_8640_1BB13725BA88 --> oryx_E62BBADF_5819_45C3_BD9C_3418E39BC4CB
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}