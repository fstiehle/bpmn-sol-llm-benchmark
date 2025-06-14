// test openai/gpt-4.1 - one-shot at 2025-06-11T23:49:45.284Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_7502f5f2_4250_4d09_a194_2d7312b7bc1b {
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
      // sid-DBACF7D5-D007-4F25-A4E9-00E3DF72A2C5: slanje_problema [taskID=1], initiated by participants[0]
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for slanje_problema
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-960F19B5-909B-41FC-BC7A-0BCA2E01BEA5: dobijanje_detaljnog_opisa [taskID=2], initiated by participants[3]
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          // custom code for dobijanje_detaljnog_opisa
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-5657E6B2_384A_4BAA_B5B5_C60AD28AB318
      // Bit 4 signals the gateway is active
      if (_tokenState & 4 == 4) {
        bool handled = false;
        // SequenceFlow sid-0552408C_4551_4B2A_A966_15CE631261AB: conditions & 1 == 1
        if ((conditions & 1 == 1)) {
          // to sid-AE31756A_4ACA_419E_953F_348EF5858010 (taskID=4), set bit 8
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          handled = true;
          continue;
        }
        // Default Flow: sid-B307D198_53CB_469A_88AE_577BC2683278 -> sid-EB936A34_57FB_492F_914F_0C38A32ACCBA (taskID=3)
        if (!handled) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      // sid-EB936A34-57FB-492F-914F-0C38A32ACCBA: stanje_resenja [taskID=3], initiated by participants[5]
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[5]) {
          // custom code for stanje_resenja
          _tokenState &= ~uint(16);
          // Process ends here (sid-01F8110B_20DB_4D8B_A183_B13C1A02105B)
          _tokenState = 0;
          break;
        }
      }
      // sid-AE31756A-4ACA-419E-953F-348EF5858010: trazenje_resenja [taskID=4], initiated by participants[6]
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code for trazenje_resenja
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-0F3BCA2B_2E90_46F9_B1B0_548849160943
      // Bit 32 signals the gateway is active
      if (_tokenState & 32 == 32) {
        bool handled = false;
        // SequenceFlow sid-72823568_5B90_402F_B560_1543C92136E5: conditions & 2 == 2
        if ((conditions & 2 == 2)) {
          // to sid-351B7991_7029_4335_B071_8CC6646F7179 (taskID=6), set bit 128
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          handled = true;
          continue;
        }
        // Default Flow: sid-0C442D36_C5B7_4BE1_A73C_E82F423D33EF -> sid-F3EBD7C8_1788_48BB_B375_672376D51FE8 (taskID=5)
        if (!handled) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      // sid-F3EBD7C8-1788-48BB-B375-672376D51FE8: slanje_resenja [taskID=5], initiated by participants[9]
      if (_tokenState & 64 == 64) {
        if (id == 5 && msg.sender == participants[9]) {
          // custom code for slanje_resenja
          _tokenState &= ~uint(64);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-351B7991-7029-4335-B071-8CC6646F7179: trazenje_resenja [taskID=6], initiated by participants[10]
      if (_tokenState & 128 == 128) {
        if (id == 6 && msg.sender == participants[10]) {
          // custom code for trazenje_resenja
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid-360D1C00-730A-4CDE-BCEA-56A27C1BEBD8: slanje_ressejna [taskID=7], initiated by participants[13]
      if (_tokenState & 256 == 256) {
        if (id == 7 && msg.sender == participants[13]) {
          // custom code for slanje_ressejna
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}