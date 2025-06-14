// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:33:09.936Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_3406c2ea_744f_4829_b96a_36cd98fa7c13 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;
  
  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_7A6D2EC5 Anfrage stellen --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway ADB28F9F converging --->
        if (conditions & 1 == 1 || conditions & 2 == 2) {
          // One of the conditions is satisfied
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // Default flow
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_2B34D3A5 Angebot stellen --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ExclusiveGateway F726F0A0 diverging --->
        if ((conditions & 1 == 1) || (conditions & 2 == 2) || (conditions & 4 == 4)) {
          // At least one condition is satisfied
          _tokenState &= ~uint(8);
          if (conditions & 1 == 1) _tokenState |= 16; // Absage senden
          if (conditions & 2 == 2) _tokenState |= 32; // Aenderung anfragen
          if (conditions & 4 == 4) _tokenState |= 64; // Auftrag senden
          continue;
        } else {
          // None of the conditions are satisfied, follow default
          _tokenState &= ~uint(8);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_033B60DD Absage senden --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(16);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_32373B24 Aenderung anfragen --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(32);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_4A1D27ED Auftrag senden --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(64);
          _tokenState |= 1024;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- EndEvent (default flow) --->
        _tokenState = 0;
        break;
      }
      if (_tokenState & 256 == 256) {
        // <--- ExclusiveGateway C4AE4C53 converging --->
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ExclusiveGateway F8DDC641 diverging --->
        if ((conditions & 4 == 4) || (conditions & 8 == 8)) {
          _tokenState &= ~uint(512);
          if (conditions & 4 == 4) _tokenState |= 1024; // Verfügbarkeit bestätigen
          if (conditions & 8 == 8) _tokenState |= 2048; // Verfügbarkeit absagen
          continue;
        } else {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_208576A6 Anfrage stellen --->
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_E39CFE77 Verfügbarkeit absagen --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ExclusiveGateway C4AE4C53 converging --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        continue;
      }
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask_678F1659 Verfügbarkeit bestätigen --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- ChoreographyTask_DFD49704 Auftrag erstellen --->
        if (9 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(16384);
          _tokenState |= 32768;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- ChoreographyTask_5DE29D81 Grafik verschicken --->
        if (10 == id && msg.sender == participants[18]) {
          _tokenState &= ~uint(32768);
          _tokenState |= 65536;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- ChoreographyTask_5C840AD1 Anzeige übermitteln --->
        if (11 == id && msg.sender == participants[20]) {
          _tokenState &= ~uint(65536);
          _tokenState |= 131072;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <--- EndEvent --->
        _tokenState = 0;
        break;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
