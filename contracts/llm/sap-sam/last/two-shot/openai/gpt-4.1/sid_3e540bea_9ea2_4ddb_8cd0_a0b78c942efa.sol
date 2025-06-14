// test openai/gpt-4.1 - two-shot at 2025-06-12T00:58:32.722Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_3e540bea_9ea2_4ddb_8cd0_a0b78c942efa {
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
      // sid-36C0040E-7810-4DE4-BB7B-C312FB7C51F0 Klijent_ima_problem
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-663EA2D1-A326-4D98-A4DE-2D130817DE4D Detaljnije_opisivanje_problema
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Gateway sid-CB3A6E8D_2ED0_45DB_AB9A_F2D0E9927521
      if (_tokenState & 4 == 4) {
        bool executed = false;
        if ((conditions & 1 == 1)) {
          // sid-DFDA9782-1A96-4262-B82A-CE855B16A735 to sid-BD677F30-8130-47F2-8E95-1D4769FB1F47
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          executed = true;
        }
        if (!executed) {
          // default sid-3B6721C5-89D1-42BC-9CB0-548C8CC260E7 to sid-B8FF6893-4145-438B-8A05-E5CD223E62FE
          _tokenState &= ~uint(4);
          _tokenState |= 512;
          executed = true;
        }
        if (executed) {
          continue;
        }
      }
      // sid-BD677F30-8130-47F2-8E95-1D4769FB1F47 Pitanje_podrske_prvog_nivoa
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Gateway sid-C45A5040_1C56_4BFE_8A80_708F6D3EC2A3
      if (_tokenState & 32 == 32) {
        bool executed = false;
        if ((conditions & 2 == 2)) {
          // sid-A6A4EEC1-BEA1-4726-845C-A9FCD6A5BE4F to sid-006249D0-5879-424A-B9A4-B9F0A079E4E7
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          executed = true;
        }
        if (!executed) {
          // default sid-0A307148-E817-4D0C-822B-FCA222EF2983 to sid-CCF9A421-42C3-43D0-A441-374253CCCA89
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          executed = true;
        }
        if (executed) {
          continue;
        }
      }
      // sid-CCF9A421-42C3-43D0-A441-374253CCCA89 Pitanje_podrske_drugog_nivoa
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid-2173A2F1-5CB3-47EE-8C89-BFCF203F248A Objashnjavanje_resenja_podrsci_prvog_nivoa
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Gateway sid-006249D0_5879_424A_B9A4_B9F0A079E4E7 (join)
      if (_tokenState & 128 == 128) {
        // This is a join gateway with two incoming: sid-A6A4EEC1-BEA1-4726-845C-A9FCD6A5BE4F and sid-E8C182F2-E053-4867-A7E8-9F4F7802887B
        // But in this model, only one of these will ever be set at a time, since the two paths are exclusive.
        // So auto transition to sid-415D7F49-1116-4014-9313-6F5CF696EF08
        _tokenState &= ~uint(128);
        _tokenState |= 1024;
        continue;
      }
      // sid-415D7F49-1116-4014-9313-6F5CF696EF08 Objashnjavanje_resera_operateru
      if (_tokenState & 1024 == 1024) {
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // Gateway sid-B8FF6893_4145_438B_8A05_E5CD223E62FE (join)
      if (_tokenState & 512 == 512) {
        // This is a join gateway with two incoming: sid-3B6721C5-89D1-42BC-9CB0-548C8CC260E7 and sid-92ABFB31-7622-4298-9C74-8D9BAAF717F4
        // Only one path active at a time, so just forward to sid-EBC1C952-4F4E-4F3B-A435-993EC8C7A873
        _tokenState &= ~uint(512);
        _tokenState |= 8;
        continue;
      }
      // sid-EBC1C952-4F4E-4F3B-A435-993EC8C7A873 Objashnjavanje_resenja
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          // end event
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}