// test openai/gpt-4.1 - two-shot at 2025-06-12T01:10:11.698Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
  uint public tokenState = 1;
  address[15] public participants;
  uint public conditions;
  constructor(address[15] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-56125FD7_FBEE_47E9_B12C_9F21ECF50FBE teilt Wuensche_Rahmenbedingung mit --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-F6CE5331_CAB4_4FAC_BDD7_3B99BC13EECE praesentiert moegliches Objekt --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- ExclusiveGateway sid-2C48E915_2A98_4D58_8547_C7922A4C8935 --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        // sid-8428095B_A1F1_4259_978B_DF39DCBD31A4 (condition: conditions & 1 == 1)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
        }
        if (!didTransition) {
          // default sid-3A31F015_2B3C_4A09_ACCC_4363462C4F1B
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        } else {
          continue;
        }
      }
      // <--- sid-56CC82ED_03D3_4C04_8596_36F6EC5AF83A entscheidet sich fuer Objekt --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 48;
        id = 0;
        continue; 
        }
      }
      // <--- ParallelGateway sid-C8DEEA29_0B4B_454C_9351_E8A1B0ABCB86 (split) --->
      if (_tokenState & 16 == 16) {
        // not used directly; handled in previous step
      }
      // <--- sid-627ACE73_E5A5_4C21_A82F_E4F6B855E698 Finanzierung klaeren --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      // <--- sid-898706F7_D8B6_4499_9CC2_35153078234D bereitet Vertrag vor --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- ParallelGateway sid-5E5530AA_6767_4D7E_AD0E_C196C21E0078 (join) --->
      if (_tokenState & 192 == 192) {
        // 64 (from Vertrag vorbereiten) + 128 (from Finanzierung klaeren) == 192
        _tokenState &= ~uint(192);
        _tokenState |= 256;
        continue;
      }
      // <--- sid-218F35A0_BB4F_434A_A456_79ED84327F62 Vertrag unterzeichnen --->
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}