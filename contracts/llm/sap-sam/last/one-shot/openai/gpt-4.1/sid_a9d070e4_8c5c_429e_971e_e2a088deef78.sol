// test openai/gpt-4.1 - one-shot at 2025-06-12T00:04:25.758Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // --- Task 1: Anfrage Pauschalreise (initiator: participants[0]) ---
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-ADEE584F-2A54-4B9B-A3C7-37727002A798 (Parallel Split) ---
      if (_tokenState & 2 == 2) {
        // parallel split: activate both sid-56679A2F-AC09-4588-A72E-9FF2B290B59B (task 3, bit 4) and sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C (task 2, bit 8)
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // --- Task 3: Angebotsanfrage (initiator: participants[4]) ---
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task here
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // --- Task 2: Angebotsanfrage (initiator: participants[2]) ---
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task here
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // --- Task 4: Rücksendung_von_Angebot (initiator: participants[6]) ---
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task here
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // --- Task 5: Rücksendung_von_Angebot (initiator: participants[8]) ---
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for task here
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-C4048646-CFB3-429D-A337-2A144C2F56AE (Parallel Join) ---
      if (_tokenState & 384 == 384) {
        // 128|256, parallel join, both must be present
        _tokenState &= ~uint(384);
        _tokenState |= 1024;
        continue;
      }
      // --- Task 6: Uebermittelt_Angebote_und_Rechnung (initiator: participants[10]) ---
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
          // custom code for task here
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-4D7F7F65-2E2B-4812-AD70-399980C84C74 (Parallel Split) ---
      if (_tokenState & 2048 == 2048) {
        // parallel split: activate task 7 (4096) and task 8 (8192)
        _tokenState &= ~uint(2048);
        _tokenState |= 12288;
        continue;
      }
      // --- Task 7: Buchungsanfrage (initiator: participants[12]) ---
      if (_tokenState & 4096 == 4096) {
        if (7 == id && msg.sender == participants[12]) {
          // custom code for task here
          _tokenState &= ~uint(4096);
          _tokenState |= 16384;
          id = 0;
          continue;
        }
      }
      // --- Task 8: Buchungsanfrage (initiator: participants[14]) ---
      if (_tokenState & 8192 == 8192) {
        if (8 == id && msg.sender == participants[14]) {
          // custom code for task here
          _tokenState &= ~uint(8192);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      // --- Task 10: Buchungsbestaetigung_und_Rechnung (initiator: participants[18]) ---
      if (_tokenState & 16384 == 16384) {
        if (10 == id && msg.sender == participants[18]) {
          // custom code for task here
          _tokenState &= ~uint(16384);
          _tokenState |= 65536;
          id = 0;
          continue;
        }
      }
      // --- Task 9: Buchungsbestaetigung_und_Rechnung (initiator: participants[16]) ---
      if (_tokenState & 32768 == 32768) {
        if (9 == id && msg.sender == participants[16]) {
          // custom code for task here
          _tokenState &= ~uint(32768);
          _tokenState |= 131072;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578 (Parallel Join) ---
      if (_tokenState & 196608 == 196608) {
        // 65536|131072, parallel join, both must be present
        _tokenState &= ~uint(196608);
        _tokenState |= 262144;
        continue;
      }
      // --- End Event: Reise_ist_gebucht ---
      if (_tokenState & 262144 == 262144) {
        // End event reached
        _tokenState = 0;
        break;
      }
      // No more progress possible, or waiting for correct enact
      break;
    }
    tokenState = _tokenState;
  }
}