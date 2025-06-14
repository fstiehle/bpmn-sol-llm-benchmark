// test openai/gpt-4.1 - one-shot at 2025-06-12T00:02:42.671Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a128c562_b6ff_4762_86ad_3db757b3baa8 {
  uint public tokenState = 1;
  address[19] public participants;
  uint public conditions;
  constructor(address[19] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // <--- sid-17139AC8_7F6D_400E_AFDA_3B754E66F776 Ueberweisung_taetigen --->
      if (_tokenState & 2 == 2) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // <--- sid-75BCEE37_9CDA_41D8_B345_83417545D41F Nachhzahlungsaufforderung_schicken --->
      if (_tokenState & 512 == 512) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 1;
          id = 0;
          continue;
        }
      }
      // <--- sid-6840A80E_8EE7_4A49_9CFE_607B2EED5E87 Ueberschuss_zurueckzahlen --->
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          // End Event
          _tokenState = 0;
          break;
        }
      }
      // <--- sid-1FB6E2A1_8320_4851_B504_8CA4B7AF1ED0 Zahlungseingang_bestaetigen --->
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-13151680_B8EB_4564_B218_B73084FC75E5 Transportkosten_bezahlen --->
      if (_tokenState & 1024 == 1024) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // <--- sid-5CFB3FE9_33BB_4E8D_91F5_FB684E3F49BC Ware_an_Logistik_Unternehmen_uebergeben --->
      if (_tokenState & 2048 == 2048) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      // <--- sid-F731B3E3_C364_47B2_85EE_F14FE149D7B1 Ware_liefern --->
      if (_tokenState & 16384 == 16384) {
        if (id == 7 && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16384);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      // <--- sid-5FD69B90_2FAE_4AF1_A36E_3C5F70447C40 Wareneingang_bestaetigen --->
      if (_tokenState & 32768 == 32768) {
        if (id == 8 && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32768);
          _tokenState |= 65536;
          id = 0;
          continue;
        }
      }
      // <--- sid-0C00E59F_E01E_45F3_A8DD_E10A61D2884F Ueberweisung_an_den_Verkaeufer_taetigen --->
      if (_tokenState & 65536 == 65536) {
        if (id == 9 && msg.sender == participants[17]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(65536);
          // End Event
          _tokenState = 0;
          break;
        }
      }
      // <--- ExclusiveGateway sid_F712A586_37E3_49AA_86C8_9B0038BE7B0C --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
        }
        if (!didTransition && (conditions & 2 == 2)) {
          _tokenState &= ~uint(4);
          _tokenState |= 512;
          didTransition = true;
        }
        if (!didTransition) {
          // default
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      // <--- ParallelGateway sid_33A7C015_D6BD_4CA4_AD1A_6C1A7BD4E27C (split) --->
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 1024 | 2048;
        continue;
      }
      // <--- ParallelGateway sid_FDB6B8B7_8C1C_456A_B335_DDB19C1DEB84 (join) --->
      if ((_tokenState & (4096 | 8192)) == (4096 | 8192)) {
        _tokenState &= ~(uint(4096) | uint(8192));
        _tokenState |= 16384;
        continue;
      }
      // <--- ExclusiveGateway sid_EAF41093_B5F5_4B5C_8082_D4A174EB8ECA (converging) --->
      if (_tokenState & 1 == 1) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      // <--- StartEvent sid_38936D22_D465_4496_B823_C6609DF2B7DC --->
      if (_tokenState & 1 == 1) {
        // Already handled above, to avoid double transition
        break;
      }
      // <--- sid-FDB6B8B7_8C1C_456A_B335_DDB19C1DEB84 needs to wait for both tasks --->
      // No further action here; handled above in join logic
      break;
    }
    tokenState = _tokenState;
  }
}