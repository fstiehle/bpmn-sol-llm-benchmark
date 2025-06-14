// test openai/gpt-4.1 - one-shot at 2025-06-11T23:53:51.465Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_848b09bf_d759_44bc_8a4b_954dff55e26c {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;

  // taskID mapping:
  // 1: sid_29382691_CB62_40F3_A6A9_5C643BCD67F4  (Anruf)
  // 2: sid_482ECE6A_6926_4174_B9E2_1C7B992D32EC  (Prolem_am_Telefon_loesen)
  // 3: sid_737C1F68_8E64_44F6_9DA9_87F49EC235AB  (Prolem_wurde_geloest)
  // 4: sid_E7B112CB_896D_4159_9464_B74D47DE6861  (Problem_wurde_nicht_geloest)
  // 5: sid_2D85381C_5785_40E1_95C2_8726B0E2869E  (Prolem_weitergeben)
  // 6: sid_20BC5888_EE78_45CF_9853_A0957742FEC2  (Kunden_besuchen)
  // 7: sid_164C0FA3_1643_4A7A_9EA0_13E3D9F745B9  (Prolem_loesen)
  // 8: sid_48480116_350F_44A4_B921_AA30302FA5E0  (Formular_unterschreiben)

  // participant index mapping:
  // 0: sid_0D758311_08BA_49AC_B8A2_995DF8655BF1 (Hotline_MA)
  // 1: sid_C4441D10_3E4C_4630_B748_99DDAFD121EE (Kunde)
  // 2: sid_7341C6F9_65E2_4C8D_9A9C_FA1660411548 (Kunde)
  // 3: sid_EA28EE9A_AB7E_4157_BFDA_54F442F6D620 (Hotline_MA)
  // 4: sid_C0A5C14F_C6CB_4199_9DE8_5767C107A3F2 (Kunde)
  // 5: sid_2D4982DD_8649_49A9_901D_74FFF04D4F0B (Hotline_MA)
  // 6: sid_09435B6A_34BA_43EC_96FB_696316B9DD49 (Kunde)
  // 7: sid_572A626E_2973_4C6F_A029_DA91DE668E8C (Hotline_MA)
  // 8: sid_3C3E0C2A_B0EE_4BAC_8D52_757F7781B9B6 (Hotline_MA)
  // 9: sid_81D2F08C_0446_4376_9A6C_08DD36299C3D (Dispontent)
  // 10: sid_2F046506_E851_4E4B_A48B_95D757194B0D (Te)
  // 11: sid_7A747C95_3804_496E_A913_DAE308715379 (Kunde)
  // 12: sid_9FBAE5F6_8CC2_4F4B_B8A5_D86727A7F236 (Techniker)
  // 13: sid_5C90D42C_10C4_4FE1_BA5C_702E2832A6FE (Kunde)
  // 14: sid_22A61C42_29C4_4BC0_9FA3_D3F1BC27D4CB (Techniker)
  // 15: sid_7AC3DCC9_8B33_46F7_94F1_27957E2C1402 (Kunde)

  constructor(address[16] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // bit 1: sid_29382691_CB62_40F3_A6A9_5C643BCD67F4 (Anruf)
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // Task 1: Anruf - initiatingParticipant: 0
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // bit 2: sid_482ECE6A_6926_4174_B9E2_1C7B992D32EC (Prolem_am_Telefon_loesen)
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // Task 2: Prolem_am_Telefon_loesen - initiatingParticipant: 2
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // bit 4: ExclusiveGateway sid_B14BB365_4055_4E22_B49D_C6ACF85300DC
      if (_tokenState & 4 == 4) {
        // sid_B14BB365_4055_4E22_B49D_C6ACF85300DC has two outgoing:
        // sid_A89C2B0B_B494_4126_BC31_6A6A522D8885  --> sid_737C1F68_8E64_44F6_9DA9_87F49EC235AB (Task 3), (default)
        // sid_6307BE67_E6FD_4A57_AE98_881FD120B40F (cond: conditions & 1 == 1) --> sid_E7B112CB_896D_4159_9464_B74D47DE6861 (Task 4)
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8; // Task 4
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16; // Task 3 (default)
          continue;
        }
      }
      // bit 8: sid_E7B112CB_896D_4159_9464_B74D47DE6861 (Problem_wurde_nicht_geloest)
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // Task 4: Problem_wurde_nicht_geloest - initiatingParticipant: 6
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // bit 16: sid_737C1F68_8E64_44F6_9DA9_87F49EC235AB (Prolem_wurde_geloest)
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[4]) {
          // Task 3: Prolem_wurde_geloest - initiatingParticipant: 4
          _tokenState &= ~uint(16);
          // End event reached after this (sid_D033CC47_865A_46E8_8D38_DF78EEFFE13B)
          _tokenState = 0;
          break;
        }
      }
      // bit 32: sid_2D85381C_5785_40E1_95C2_8726B0E2869E (Prolem_weitergeben)
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[8]) {
          // Task 5: Prolem_weitergeben - initiatingParticipant: 8
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // bit 64: sid_20BC5888_EE78_45CF_9853_A0957742FEC2 (Kunden_besuchen)
      if (_tokenState & 64 == 64) {
        if (id == 6 && msg.sender == participants[10]) {
          // Task 6: Kunden_besuchen - initiatingParticipant: 10
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // bit 128: sid_164C0FA3_1643_4A7A_9EA0_13E3D9F745B9 (Prolem_loesen)
      if (_tokenState & 128 == 128) {
        if (id == 7 && msg.sender == participants[12]) {
          // Task 7: Prolem_loesen - initiatingParticipant: 12
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // bit 256: sid_48480116_350F_44A4_B921_AA30302FA5E0 (Formular_unterschreiben)
      if (_tokenState & 256 == 256) {
        if (id == 8 && msg.sender == participants[14]) {
          // Task 8: Formular_unterschreiben - initiatingParticipant: 14
          _tokenState &= ~uint(256);
          // End event reached after this (sid_D033CC47_865A_46E8_8D38_DF78EEFFE13B)
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
