// test openai/gpt-4.1 - two-shot at 2025-06-12T01:08:05.233Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_5fb9da82_3146_471f_b362_d007b1eeba22 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-7022C348-D09E-4F95-B819-26BB3F9BDA77 Termin ausmachen --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Termin ausmachen here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-B7F015A5-D636-416D-9257-A87971F74589 Termin und Ort verifizieren --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Termin und Ort verifizieren here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- sid-73A19B14-D898-44EF-928B-79832C150CC9 Fotoauswahl digital gedruckt Anzahl und Sonderwuensche --->
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Fotoauswahl digital gedruckt Anzahl und Sonderwuensche here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // <--- sid-263E55DE-655C-4354-9267-B923AB819ADA Fotos festlegen und Sonderwuensche --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Fotos festlegen und Sonderwuensche here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- sid-7FD2DF6B-AA9B-4DB9-8A4A-BB8B78D10B0E Rechnung austellen --->
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Rechnung austellen here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-2BA251C1-F838-4861-B938-22F4BE0320B2 Fotos bezahlen --->
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for Fotos bezahlen here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- sid-DB65A7A4-7642-48A2-8798-44DC7F968623 Fotos abholen --->
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for Fotos abholen here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-D0AC8191-ECED-4E83-ACF3-28B83E1C53E2 Fotos geschickt bekommen --->
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for Fotos geschickt bekommen here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
        }
      }
      // <--- ExclusiveGateway sid-0F477053-E408-4EC6-956C-FC3E8CCA0EF7 (Diverging) --->
      // incoming: sid-5CFF0D94-EAB5-41B3-93D6-EB402ACDFFEC (from Fotos bezahlen)
      // outgoing: sid-FF2F1A17-458D-4F6D-9D81-09D2C975E106 (default), sid-93887997-DEFD-4654-8B31-A8876CE9265E (condition: conditions & 1 == 1)
      if (_tokenState & 64 == 64) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // sid-93887997-DEFD-4654-8B31-A8876CE9265E: to Fotos geschickt bekommen
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default: sid-FF2F1A17-458D-4F6D-9D81-09D2C975E106 to Fotos abholen
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-B15530BB-F5EE-4B75-8886-2C8A7BFF05F6 (Converging) --->
      // incoming: sid-673C3920-5B43-46D1-BF1F-60755894495D, sid-E7435D8C-B635-4305-9E7E-7ABF89F93B3E
      // outgoing: sid-8B14D986-9557-406D-866D-B910F5452E1E => end (tokenState = 0)
      if (_tokenState & 384 == 384) {
        _tokenState &= ~uint(384);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
