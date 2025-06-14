// test openai/gpt-4.1 - two-shot at 2025-06-12T01:56:13.854Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_a128c562_b6ff_4762_86ad_3db757b3baa8 {
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
    while(_tokenState != 0) {
      // <--- sid-17139AC8-7F6D-400E-AFDA-3B754E66F776 Ueberweisung taetigen --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-75BCEE37-9CDA-41D8-B345-83417545D41F Nachhzahlungsaufforderung schicken --->
      if (_tokenState & 16 == 16) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- sid-6840A80E-8EE7-4A49-9CFE-607B2EED5E87 Ueberschuss zurueckzahlen --->
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-1FB6E2A1-8320-4851-B504-8CA4B7AF1ED0 Zahlungseingang bestaetigen --->
      if (_tokenState & 4 == 4) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // <--- sid-13151680-B8EB-4564-B218-B73084FC75E5 Transportkosten bezahlen --->
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- sid-5CFB3FE9-33BB-4E8D-91F5-FB684E3F49BC Ware an Logistik_Unternehmen uebergeben --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // <--- sid-F731B3E3-C364-47B2-85EE-F14FE149D7B1 Ware liefern --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // <--- sid-5FD69B90-2FAE-4AF1-A36E-3C5F70447C40 Wareneingang bestaetigen --->
      if (_tokenState & 1024 == 1024) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // <--- sid-0C00E59F-E01E-45F3-A8DD-E10A61D2884F Ueberweisung an den Verkaeufer taetigen --->
      if (_tokenState & 2048 == 2048) {
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- ExclusiveGateway sid-F712A586_37E3_49AA_86C8_9B0038BE7B0C --->
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // condition: conditions & 1 == 1, to sid-6840A80E_8EE7_4A49_9CFE_607B2EED5E87
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        if (conditions & 2 == 2) {
          // condition: conditions & 2 == 2, to sid-75BCEE37_9CDA_41D8_B345_83417545D41F
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          transitioned = true;
          continue;
        }
        // default to sid-1FB6E2A1_8320_4851_B504_8CA4B7AF1ED0
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- ParallelGateway sid-33A7C015_D6BD_4CA4_AD1A_6C1A7BD4E27C (split) --->
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        _tokenState |= 192; // 64 (task 5) + 128 (task 6)
        continue;
      }
      // <--- ParallelGateway sid-FDB6B8B7_8C1C_456A_B335_DDB19C1DEB84 (join) --->
      if (_tokenState & 384 == 384) {
        _tokenState &= ~uint(384);
        _tokenState |= 512;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}