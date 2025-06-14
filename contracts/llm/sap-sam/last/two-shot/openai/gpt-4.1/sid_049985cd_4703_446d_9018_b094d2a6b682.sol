// test openai/gpt-4.1 - two-shot at 2025-06-12T00:07:59.214Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_two_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-227226E5_6AEA_41EF_A8B0_83C9A219227F Make_travel_offer --->
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // gateway sid-757D9B45_2990_4D72_BFA2_4DEC61AA8DA4 (event-based exclusive)
        // two outgoing: to sid-C49AC673_113F_41E0_A8FF_FA0D5D2267FA (sid-84706E17_ABF5_43EB_8031_643E1E824B89)
        // and to sid-C9EDEBCA_CFD7_47C8_B834_6275614314F0 (sid-B12CEDDB_9044_460F_BDC2_355C50A69040)
        // Both are tasks, both are enabled for enact depending on id & participant
        // <--- sid-C49AC673_113F_41E0_A8FF_FA0D5D2267FA Reject_offer --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
        // <--- sid-C9EDEBCA_CFD7_47C8_B834_6275614314F0 Book_Travel_and_confirm_booking --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- auto: sid-3AC96AC1_6DA1_4836_9C0E_F9EDB21DB603 (end event, offer canceled) --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-A70C991E_702F_4C96_9488_D630468D3804 Pay_Travel --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-46204067_2C7E_484E_8BC3_5979178FE4C4 Order_ticket --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // gateway sid-4334BA60_223E_4C5F_9305_20B14D486830 (event-based exclusive)
        // two outgoing: to sid-D456077E_5BB6_474E_88EC_5C0B045B5F78 (sid-3B09B51C_0CC9_48D6_98A6_0203014F9932)
        // and to sid-85CDD208_375B_493C_808D_239AB05D7F30 (sid-2782F900_FF89_431C_B548_2ED4C1738816)
        // Both are tasks, both are enabled for enact depending on id & participant
        // <--- sid-D456077E_5BB6_474E_88EC_5C0B045B5F78 Confirm_payment --->
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
        // <--- sid-85CDD208_375B_493C_808D_239AB05D7F30 Refuse_payment --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- auto: sid-3AC96AC1_6DA1_4836_9C0E_F9EDB21DB603 (end event, offer canceled) --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break;
      }
      if (_tokenState & 128 == 128) {
        // <--- auto: sid-3AC96AC1_6DA1_4836_9C0E_F9EDB21DB603 (end event, offer canceled) --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}