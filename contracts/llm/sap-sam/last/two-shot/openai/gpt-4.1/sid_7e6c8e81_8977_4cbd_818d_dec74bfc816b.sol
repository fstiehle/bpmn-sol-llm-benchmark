// test openai/gpt-4.1 - two-shot at 2025-06-12T01:38:38.235Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_7e6c8e81_8977_4cbd_818d_dec74bfc816b {
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
    while (_tokenState != 0) {
      // <--- sid-30A5461D_7588_4ED8_ADC2_E4128343C522 Receive documents --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }

      // <--- sid-3D723944_9B34_40D6_A39C_EAB0CA933734 Application contains errors --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }

      // <--- sid-5A3ECBEA_8342_402B_8957_B983A5CF5CB6 Reject application --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        // End event: process terminates here
        _tokenState = 0;
        break;
        }
      }

      // <--- sid-6DBA4DBC_8A77_4C66_93CB_4834A500751F Application resubmissions --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }

      // <--- sid-CD6AB0BE_9B3F_434A_8700_6D824685A462 Applications verified --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }

      // <--- sid-87287EEC_75F1_4AC8_AE7E_9C391703EE55 Receive final ranking list --->
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }

      // <--- sid-BB62FAA9_D601_4BF1_A772_3A4380DD1A5B Notify Applicants --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }

      // <--- sid-02B3BAAB_F46E_4E03_8DEB_ED35AD89343F Accept offer --->
      if (_tokenState & 2048 == 2048) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }

      // <--- sid-7A241CBE_2575_4DCA_95BC_28BAB9EEFF81 Reject offer --->
      if (_tokenState & 4096 == 4096) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }

      // <--- sid-4B89B8DF_8AF8_4325_81E7_8C70BB23A15D Confirmation of applicants --->
      if (_tokenState & 8192 == 8192) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        // End event: process terminates here
        _tokenState = 0;
        break;
        }
      }

      // <--- Gateway sid-420FA79D_71AA_422E_96B7_822B196854FC --->
      if (_tokenState & 2 == 2) {
        // sid-8197F7CF_72CB_4944_8E9C_E76B46EB4BE4 (default)
        // sid-9569A509_8C98_40F3_8560_74980E2EA2CC (condition: conditions & 1 == 1)
        if (conditions & 1 == 1) {
          // to sid-5A3ECBEA_8342_402B_8957_B983A5CF5CB6 (Reject application)
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        } else {
          // to sid-3D723944_9B34_40D6_A39C_EAB0CA933734 (Application contains errors) [default]
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      // <--- Gateway sid-E659E6B5_CF05_438F_BE95_3477F5627733 --->
      if (_tokenState & 64 == 64) {
        // sid-F8F43EAA_C841_421A_A0F4_1B4734EEF7CA (Failed)
        // sid-9F7B8AC3_8290_4C7B_AD74_A52D4383BAA2 (condition: conditions & 4 == 4)
        if (conditions & 4 == 4) {
          // to sid-87287EEC_75F1_4AC8_AE7E_9C391703EE55 (Receive final ranking list)
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        } else {
          // to sid-5A3ECBEA_8342_402B_8957_B983A5CF5CB6 (Reject application) [default]
          _tokenState &= ~uint(64);
          _tokenState |= 16;
          continue;
        }
      }

      // <--- Gateway sid-D11CB962_3778_4ECF_B3C7_17DDBE479BBB --->
      if (_tokenState & 1024 == 1024) {
        // sid-58220E7B_636A_489A_9A1F_6DD05194D948 (default)
        // sid-118A64F0_5D9E_4476_A27A_D70A5406A9B0 (condition: conditions & 2 == 2)
        if (conditions & 2 == 2) {
          // to sid-02B3BAAB_F46E_4E03_8DEB_ED35AD89343F (Accept offer)
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue;
        } else {
          // to sid-7A241CBE_2575_4DCA_95BC_28BAB9EEFF81 (Reject offer) [default]
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          continue;
        }
      }

      // <--- Gateway sid-42E5E8F5_0059_4B9D_A965_3535DB92B13A (Converging) --->
      if (_tokenState & 6144 == 6144) { // 2048 | 4096
        // Once either Accept offer or Reject offer is done, continue.
        _tokenState &= ~uint(6144);
        _tokenState |= 8192;
        continue;
      }

      // <--- Gateway sid-8022EB06_4802_4E1C_BAB1_5AD6A33B658A (Converging) --->
      if (_tokenState & 32 == 32) {
        // Already handled above as sid-CD6AB0BE_9B3F_434A_8700_6D824685A462 task, which moves to 64 (sid-E659E6B5_CF05_438F_BE95_3477F5627733)
        // Nothing to do here.
      }

      // <--- Gateway sid-5578B669_110F_446A_A31A_F51CDFE44957 (Converging) --->
      if (_tokenState & 8 == 8) {
        // Already handled above as sid-6DBA4DBC_8A77_4C66_93CB_4834A500751F task, which moves to 32 (sid-CD6AB0BE_9B3F_434A_8700_6D824685A462)
        // Nothing to do here.
      }

      // <--- Gateway sid-E7BC3EF8_CAEA_47FE_980D_6A824253D77F (Converging) --->
      if (_tokenState & 256 == 256) {
        // Already handled above as sid-87287EEC_75F1_4AC8_AE7E_9C391703EE55 task, which moves to 512 (sid-BB62FAA9_D601_4BF1_A772_3A4380DD1A5B)
        // Nothing to do here.
      }

      // <--- Gateway sid-844FD937_BCDB_4913_98DB_B82F884D53D3 (Converging) --->
      if (_tokenState & 512 == 512) {
        // Already handled above as sid-BB62FAA9_D601_4BF1_A772_3A4380DD1A5B task, which moves to 1024 (sid-D11CB962_3778_4ECF_B3C7_17DDBE479BBB)
        // Nothing to do here.
      }

      // <--- Gateway sid-634E7E65_3943_4ED9_A145_CFC4D891E4E9 (End event) --->
      // Handled in sid-5A3ECBEA_8342_402B_8957_B983A5CF5CB6

      // <--- Gateway sid-6FD25E50_3B29_409E_A03C_6EA4CCDC2F5F (End event) --->
      // Handled in sid-4B89B8DF_8AF8_4325_81E7_8C70BB23A15D

      break;
    }
    tokenState = _tokenState;
  }
}