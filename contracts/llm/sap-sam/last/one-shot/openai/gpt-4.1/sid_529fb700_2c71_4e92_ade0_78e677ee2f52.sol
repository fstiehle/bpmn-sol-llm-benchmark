// test openai/gpt-4.1 - one-shot at 2025-06-11T23:41:44.034Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_529fb700_2c71_4e92_ade0_78e677ee2f52 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  // taskID: choreographyTaskID mapping for reference
  // 1: sid_1C226C51_E363_4826_BA85_0F703F531C64 Klijent ima problem (initiator: participants[0])
  // 2: sid_B693B53E_A351_4847_9941_52BDE15E747B Dobijanje detaljnog opisa problema (initiator: participants[3])
  // 3: sid_F7291B89_FE8B_473D_B610_791411865F5E Trazenje pomoci (initiator: participants[4])
  // 4: sid_7413834A_8E39_4E40_85A2_38B4562914F7 Trazenje pomoci (initiator: participants[6])
  // 5: sid_9C89324C_4B6B_46F0_876E_F192CA444D22 Resavanje problema (initiator: participants[8])
  // 6: sid_46DD2450_9E9B_445D_814D_C554364C7F81 Resavanje problema (initiator: participants[11])
  // 7: sid_A23868C2_A1D7_4BBA_A3EE_D9A6EC69A0DD Resavanje problema (initiator: participants[13])

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // sid_1C226C51_E363_4826_BA85_0F703F531C64: Klijent ima problem
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task 1 --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // sid_B693B53E_A351_4847_9941_52BDE15E747B: Dobijanje detaljnog opisa problema
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task 2 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // sid_F7291B89_FE8B_473D_B610_791411865F5E: Trazenje pomoci
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task 3 --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }

      // sid_7413834A_8E39_4E40_85A2_38B4562914F7: Trazenje pomoci
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task 4 --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }

      // sid_9C89324C_4B6B_46F0_876E_F192CA444D22: Resavanje problema
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task 5 --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      // sid_46DD2450_9E9B_445D_814D_C554364C7F81: Resavanje problema
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[11]) {
          // <--- custom code for task 6 --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }

      // sid_A23868C2_A1D7_4BBA_A3EE_D9A6EC69A0DD: Resavanje problema
      if (_tokenState & 2048 == 2048) {
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task 7 --->
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break; // end
        }
      }

      // <--- ExclusiveGateway sid_1C2370B0_501F_4799_83F5_78D162E545B5 znam resenje? --->
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // conditions & 1 == 1
          _tokenState &= ~uint(4);
          _tokenState |= 1024; // sid_EAFBC58A_EFE1_4FEA_86B7_A9E76F4DB678 (to sid_3B49A9B1_F4C6_4810_8F92_A811492852DF)
          transitioned = true;
        }
        if (!transitioned) {
          // default sid_619D7163_5ECB_4DA0_BAF3_39A02B6C4224 (to sid_F7291B89_FE8B_473D_B610_791411865F5E)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }

      // <--- ExclusiveGateway sid_21B65A39_B522_4F89_B698_599A8167A05C zna resenje? --->
      if (_tokenState & 16 == 16) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // conditions & 2 == 2
          _tokenState &= ~uint(16);
          _tokenState |= 512; // sid_B814619F_BBAA_4601_82D8_30CA65F55B88 (to sid_B5123D57_0CDB_4221_8EB8_829F4DF29438)
          transitioned = true;
        }
        if (!transitioned) {
          // default sid_1EB87B97_F47C_43F4_A19B_E22FEC1663B6 (to sid_7413834A_8E39_4E40_85A2_38B4562914F7)
          _tokenState &= ~uint(16);
          _tokenState |= 32;
        }
        continue;
      }

      // <--- ConvergingGateway sid_B5123D57_0CDB_4221_8EB8_829F4DF29438 (join) --->
      if (_tokenState & 576 == 576) { // 512 + 64
        _tokenState &= ~uint(576);
        _tokenState |= 256;
        continue;
      }

      // <--- ConvergingGateway sid_3B49A9B1_F4C6_4810_8F92_A811492852DF (join) --->
      if (_tokenState & 1536 == 1536) { // 1024 + 512
        _tokenState &= ~uint(1536);
        _tokenState |= 2048;
        continue;
      }

      // sid_F7291B89_FE8B_473D_B610_791411865F5E's outgoing
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }

      // sid_7413834A_8E39_4E40_85A2_38B4562914F7's outgoing
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }

      // sid_9C89324C_4B6B_46F0_876E_F192CA444D22's outgoing
      if (_tokenState & 64 == 64) {
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        continue;
      }

      // sid_46DD2450_9E9B_445D_814D_C554364C7F81's outgoing
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue;
      }

      // sid_A23868C2_A1D7_4BBA_A3EE_D9A6EC69A0DD's outgoing
      if (_tokenState & 2048 == 2048) {
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break;
      }

      break;
    }
    tokenState = _tokenState;
  }
}