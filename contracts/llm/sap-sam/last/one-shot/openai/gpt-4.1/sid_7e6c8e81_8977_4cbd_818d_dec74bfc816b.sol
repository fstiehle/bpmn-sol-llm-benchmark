// test openai/gpt-4.1 - one-shot at 2025-06-11T23:52:28.702Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_7e6c8e81_8977_4cbd_818d_dec74bfc816b {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // Task 1: sid_30A5461D_7588_4ED8_ADC2_E4128343C522 (Receive documents)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task 1
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid_420FA79D_71AA_422E_96B7_822B196854FC (default: sid_8197F7CF_72CB_4944_8E9C_E76B46EB4BE4)
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // sid_9569A509_8C98_40F3_8560_74980E2EA2CC -> sid_5A3ECBEA_8342_402B_8957_B983A5CF5CB6
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
        }
        if (!transitioned) {
          // default sid_8197F7CF_72CB_4944_8E9C_E76B46EB4BE4 -> sid_3D723944_9B34_40D6_A39C_EAB0CA933734
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
        }
        if (transitioned) continue;
      }
      // Task 2: sid_3D723944_9B34_40D6_A39C_EAB0CA933734 (Application contains errors)
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task 2
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // Task 3: sid_5A3ECBEA_8342_402B_8957_B983A5CF5CB6 (Reject application)
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task 3
          _tokenState &= ~uint(8);
          // End event sid_25E0C62F_EDAD_4C2B_88E9_F0CE5AAAABFB
          _tokenState = 0;
          break;
        }
      }
      // Task 4: sid_6DBA4DBC_8A77_4C66_93CB_4834A500751F (Application resubmissions)
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task 4
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 5: sid_CD6AB0BE_9B3F_434A_8700_6D824685A462 (Applications verified)
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for task 5
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid_E659E6B5_CF05_438F_BE95_3477F5627733 (default: sid_F8F43EAA_C841_421A_A0F4_1B4734EEF7CA)
      if (_tokenState & 64 == 64) {
        bool transitioned = false;
        if (conditions & 4 == 4) {
          // sid_9F7B8AC3_8290_4C7B_AD74_A52D4383BAA2 -> sid_87287EEC_75F1_4AC8_AE7E_9C391703EE55
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          transitioned = true;
        }
        if (!transitioned) {
          // default sid_F8F43EAA_C841_421A_A0F4_1B4734EEF7CA -> sid_5A3ECBEA_8342_402B_8957_B983A5CF5CB6
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          transitioned = true;
        }
        if (transitioned) continue;
      }
      // Task 6: sid_87287EEC_75F1_4AC8_AE7E_9C391703EE55 (Receive final ranking list)
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
          // custom code for task 6
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // Task 7: sid_BB62FAA9_D601_4BF1_A772_3A4380DD1A5B (Notify Applicants)
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
          // custom code for task 7
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid_D11CB962_3778_4ECF_B3C7_17DDBE479BBB (default: sid_58220E7B_636A_489A_9A1F_6DD05194D948)
      if (_tokenState & 512 == 512) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // sid_118A64F0_5D9E_4476_A27A_D70A5406A9B0 -> sid_02B3BAAB_F46E_4E03_8DEB_ED35AD89343F
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          transitioned = true;
        }
        if (!transitioned) {
          // default sid_58220E7B_636A_489A_9A1F_6DD05194D948 -> sid_7A241CBE_2575_4DCA_95BC_28BAB9EEFF81
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          transitioned = true;
        }
        if (transitioned) continue;
      }
      // Task 8: sid_02B3BAAB_F46E_4E03_8DEB_ED35AD89343F (Accept offer)
      if (_tokenState & 1024 == 1024) {
        if (8 == id && msg.sender == participants[14]) {
          // custom code for task 8
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // Task 9: sid_7A241CBE_2575_4DCA_95BC_28BAB9EEFF81 (Reject offer)
      if (_tokenState & 2048 == 2048) {
        if (9 == id && msg.sender == participants[16]) {
          // custom code for task 9
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid_42E5E8F5_0059_4B9D_A965_3535DB92B13A (converging, default: sid_073BBBA9_D502_4313_9E07_81B9F337F93A)
      if (_tokenState & 4096 == 4096) {
        // only one outgoing: sid_073BBBA9_D502_4313_9E07_81B9F337F93A -> sid_4B89B8DF_8AF8_4325_81E7_8C70BB23A15D
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        continue;
      }
      // Task 10: sid_4B89B8DF_8AF8_4325_81E7_8C70BB23A15D (Confirmation of applicants)
      if (_tokenState & 8192 == 8192) {
        if (10 == id && msg.sender == participants[18]) {
          // custom code for task 10
          _tokenState &= ~uint(8192);
          // End event sid_25E0C62F_EDAD_4C2B_88E9_F0CE5AAAABFB
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}