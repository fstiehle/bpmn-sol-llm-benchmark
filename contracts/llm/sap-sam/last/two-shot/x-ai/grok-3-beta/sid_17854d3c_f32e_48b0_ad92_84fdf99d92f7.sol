// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:19:52.042Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
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
      if (_tokenState & 2 == 2) {
        // <--- sid-90E1E0CC-4697-4AF5-98CB-B0DDA7792ED4 Wohnung --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-47422B2D-5D26-41DB-B127-0615FC7D32FD Gespraech --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-E4488B23-225F-450A-A883-49E9EB7FD866 Besichtigung --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-A8A5AA32-6339-48DB-A399-FE69B576C63A Wohnung abgelehnt --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-4398A998-AB97-4E2E-82AE-44E22B35EC42 Wohnung angenommen --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-F278FFA9-D781-428C-9061-460B36BB8DC8 Kredit --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-5831EEC3-4682-46D2-A619-5E6920AE6F1F Kein Kredit --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-905ABD45-2BED-4426-84B1-6A5AA93CCBF1 Kredit geben --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-93BAFAD4-8005-4C6C-8D2E-0717C32C60D7 Unterschreiben des Vertrags --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-EE223F01-9025-4791-8371-FA708DA6D6AF Eintragung --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 1 == 1) {
          // <--- auto transition --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue; 
        } else {
          // <--- default path --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          // <--- auto transition --->
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue; 
        } else {
          // <--- default path --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}