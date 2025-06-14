// test openai/gpt-4.1 - one-shot at 2025-06-11T23:26:03.130Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
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
      // <--- sid-90E1E0CC-4697-4AF5-98CB-B0DDA7792ED4 Wohnung --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // <--- sid-47422B2D-5D26-41DB-B127-0615FC7D32FD Gesprach --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // <--- sid-E4488B23-225F-450A-A883-49E9EB7FD866 Besichtigung --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // <--- sid-A8A5AA32-6339-48DB-A399-FE69B576C63A Wohnung_abgelehnt --->
      if (_tokenState & 256 == 256) {
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // <--- sid-4398A998-AB97-4E2E-82AE-44E22B35EC42 Wohnung_angenommen --->
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // <--- sid-F278FFA9-D781-428C-9061-460B36BB8DC8 Kredit --->
      if (_tokenState & 2048 == 2048) {
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // <--- sid-905ABD45-2BED-4426-84B1-6A5AA93CCBF1 Kredit_geben --->
      if (_tokenState & 8192 == 8192) {
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(8192);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      // <--- sid-93BAFAD4-8005-4C6C-8D2E-0717C32C60D7 Unterschreiben_des_Vertrags --->
      if (_tokenState & 32768 == 32768) {
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(32768);
          _tokenState |= 131072;
          id = 0;
          continue;
        }
      }
      // <--- sid-EE223F01-9025-4791-8371-FA708DA6D6AF Eintragung --->
      if (_tokenState & 131072 == 131072) {
        if (9 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(131072);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-5831EEC3-4682-46D2-A619-5E6920AE6F1F Kein_Kredit --->
      if (_tokenState & 16384 == 16384) {
        if (10 == id && msg.sender == participants[18]) {
          _tokenState &= ~uint(16384);
          _tokenState |= 0;
          break;
        }
      }
      // <--- ExclusiveGateway sid-93FF4FC7-EBE9-4C07-94D0-AAC8765CB259 --->
      if (_tokenState & 64 == 64) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          continue;
        }
        // default
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        continue;
      }
      // <--- ExclusiveGateway sid-111BD5DA-2DDD-48DB-9352-EB21C708A036 --->
      if (_tokenState & 4096 == 4096) {
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          continue;
        }
        // default
        _tokenState &= ~uint(4096);
        _tokenState |= 16384;
        continue;
      }
      // <--- ConvergingGateway sid-6090D503-E4DA-47F0-94DB-DBDC23DF6AD1 --->
      if (_tokenState & (1 | 1024) == (1 | 1024)) {
        _tokenState &= ~(uint(1) | uint(1024));
        _tokenState |= 2;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}