// test openai/gpt-4.1 - one-shot at 2025-06-11T23:44:00.711Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_5fb9da82_3146_471f_b362_d007b1eeba22 {
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
      // Task 1: sid_7022C348_D09E_4F95_B819_26BB3F9BDA77 (Termin ausmachen), initiator: 0
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: sid_B7F015A5_D636_416D_9257_A87971F74589 (Termin und Ort verifizieren), initiator: 2
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Task 3: sid_73A19B14_D898_44EF_928B_79832C150CC9 (Fotoauswahl digital gedruckt Anzahl und Sonderwunsche), initiator: 4
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Task 4: sid_263E55DE_655C_4354_9267_B923AB819ADA (Fotos festlegen und Sonderwunsche), initiator: 6
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // Task 5: sid_7FD2DF6B_AA9B_4DB9_8A4A_BB8B78D10B0E (Rechnung austellen), initiator: 8
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 6: sid_2BA251C1_F838_4861_B938_22F4BE0320B2 (Fotos bezahlen), initiator: 10
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 192;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway: sid_0F477053_E408_4EC6_956C_FC3E8CCA0EF7 (192 = 64|128)
      if (_tokenState & 192 == 192) {
        bool matched = false;
        // Conditioned path: sid_93887997_DEFD_4654_8B31_A8876CE9265E (to task 8)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(192);
          _tokenState |= 256;
          matched = true;
          continue;
        }
        // Default path: sid_FF2F1A17_458D_4F6D_9D81_09D2C975E106 (to task 7)
        if (!matched) {
          _tokenState &= ~uint(192);
          _tokenState |= 512;
          continue;
        }
      }
      // Task 7: sid_DB65A7A4_7642_48A2_8798_44DC7F968623 (Fotos abholen), initiator: 12
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // Task 8: sid_D0AC8191_ECED_4E83_ACF3_28B83E1C53E2 (Fotos geschickt bekommen), initiator: 14
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // Join Gateway: sid_B15530BB_F5EE_4B75_8886_2C8A7BFF05F6 (2048|1024 = 3072)
      if (_tokenState & 3072 == 3072) {
        _tokenState &= ~uint(3072);
        _tokenState |= 4096;
        continue;
      }
      // End Event: sid_7D61FB50_9FCD_48F8_94C4_241616493429 (4096)
      if (_tokenState & 4096 == 4096) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}