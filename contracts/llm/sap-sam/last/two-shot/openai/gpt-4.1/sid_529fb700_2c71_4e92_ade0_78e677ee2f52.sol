// test openai/gpt-4.1 - two-shot at 2025-06-12T01:04:54.027Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_529fb700_2c71_4e92_ade0_78e677ee2f52 {
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
      // sid-1C226C51_E363_4826_BA85_0F703F531C64 Klijent ima problem
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-B693B53E_A351_4847_9941_52BDE15E747B Dobijanje detaljnog opisa problema
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-F7291B89_FE8B_473D_B610_791411865F5E Trazenje pomoci
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-7413834A_8E39_4E40_85A2_38B4562914F7 Trazenje pomoci
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // sid-9C89324C_4B6B_46F0_876E_F192CA444D22 Resavanje problema
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // sid-46DD2450_9E9B_445D_814D_C554364C7F81 Resavanje problema
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-A23868C2_A1D7_4BBA_A3EE_D9A6EC69A0DD Resavanje problema
      if (_tokenState & 8192 == 8192) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Gateway sid-1C2370B0_501F_4799_83F5_78D162E545B5 (znam resenje?)
      if (_tokenState & 4 == 4) {
        bool taken = false;
        if (conditions & 1 == 1) {
          // sid-EAFBC58A_EFE1_4FEA_86B7_A9E76F4DB678
          _tokenState &= ~uint(4);
          _tokenState |= 4096;
          taken = true;
          continue;
        }
        if (!taken && (conditions & 2 == 2)) {
          // sid-B814619F_BBAA_4601_82D8_30CA65F55B88
          _tokenState &= ~uint(4);
          _tokenState |= 512;
          taken = true;
          continue;
        }
        if (!taken) {
          // default: sid-619D7163_5ECB_4DA0_BAF3_39A02B6C4224
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // Gateway sid-21B65A39_B522_4F89_B698_599A8167A05C (zna resenje?)
      if (_tokenState & 16 == 16) {
        bool taken = false;
        if (conditions & 2 == 2) {
          // sid-B814619F_BBAA_4601_82D8_30CA65F55B88
          _tokenState &= ~uint(16);
          _tokenState |= 512;
          taken = true;
          continue;
        }
        if (!taken) {
          // default: sid-1EB87B97_F47C_43F4_A19B_E22FEC1663B6
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      // Gateway sid-B5123D57_0CDB_4221_8EB8_829F4DF29438 (converging)
      if (_tokenState & 640 == 640) {
        // sid-B814619F_BBAA_4601_82D8_30CA65F55B88 and sid-4B1BFB46_73B6_4AA6_B9B6_F8FAB8E4D0AF
        _tokenState &= ~uint(640);
        _tokenState |= 1024;
        continue;
      }
      // Gateway sid-3B49A9B1_F4C6_4810_8F92_A811492852DF (converging)
      if (_tokenState & 6144 == 6144) {
        // sid-EAFBC58A_EFE1_4FEA_86B7_A9E76F4DB678 and sid-EE1D4FB3_3C9C_46F9_BC58_4BD974EE215D
        _tokenState &= ~uint(6144);
        _tokenState |= 8192;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}