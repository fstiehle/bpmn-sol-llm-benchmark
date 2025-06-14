// test openai/gpt-4.1 - two-shot at 2025-06-12T01:30:48.604Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_7502f5f2_4250_4d09_a194_2d7312b7bc1b {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-DBACF7D5_D007_4F25_A4E9_00E3DF72A2C5 slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-960F19B5_909B_41FC_BC7A_0BCA2E01BEA5 dobijanje detaljnog opisa --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Gateway: sid-5657E6B2_384A_4BAA_B5B5_C60AD28AB318 (operater zna da resi)
      if (_tokenState & 4 == 4) {
        // sid-5657E6B2_384A_4BAA_B5B5_C60AD28AB318 is active
        bool didTransition = false;
        // sequenceFlow sid-0552408C_4551_4B2A_A966_15CE631261AB: conditions & 1 == 1 -> sid-AE31756A_4ACA_419E_953F_348EF5858010
        if (!didTransition && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
          continue;
        }
        // default sequenceFlow sid-B307D198_53CB_469A_88AE_577BC2683278: -> sid-EB936A34_57FB_492F_914F_0C38A32ACCBA
        if (!didTransition) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-EB936A34_57FB_492F_914F_0C38A32ACCBA stanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-AE31756A_4ACA_419E_953F_348EF5858010 trazenje resenja --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // Gateway: sid-0F3BCA2B_2E90_46F9_B1B0_548849160943 (podrska I nivoa zna da resi)
      if (_tokenState & 32 == 32) {
        // sid-0F3BCA2B_2E90_46F9_B1B0_548849160943 is active
        bool didTransition = false;
        // sequenceFlow sid-72823568_5B90_402F_B560_1543C92136E5: conditions & 2 == 2 -> sid-351B7991_7029_4335_B071_8CC6646F7179
        if (!didTransition && (conditions & 2 == 2)) {
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          didTransition = true;
          continue;
        }
        // default sequenceFlow sid-0C442D36_C5B7_4BE1_A73C_E82F423D33EF: -> sid-F3EBD7C8_1788_48BB_B375_672376D51FE8
        if (!didTransition) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-F3EBD7C8_1788_48BB_B375_672376D51FE8 slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-351B7991_7029_4335_B071_8CC6646F7179 trazenje resenja --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-360D1C00_730A_4CDE_BCEA_56A27C1BEBD8 slanje ressejna --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
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