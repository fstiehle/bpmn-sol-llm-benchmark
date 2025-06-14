// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T09:16:42.824Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_3406c2ea_744f_4829_b96a_36cd98fa7c13 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask: Anfrage stellen
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ExclusiveGateway (Converging)
        if (conditions & 1 == 1) {
          // Default path
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ChoreographyTask: Angebot stellen
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ExclusiveGateway (Diverging)
        if (conditions & 1 == 1) {
          // Absage senden path
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        } else if (conditions & 2 == 2) {
          // Änderung anfragen path
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        } else if (conditions & 4 == 4) {
          // Auftrag senden path
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask: Absage senden
        if (id == 5 && msg.sender == participants[0]) {
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask: Änderung anfragen
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(32);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask: Auftrag senden
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ExclusiveGateway (Converging)
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // ChoreographyTask: Anfrage stellen
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // ExclusiveGateway (Diverging)
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue;
        } else {
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          continue;
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // ChoreographyTask: Verfügbarkeit bestätigen
        if (id == 8 && msg.sender == participants[11]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2048 == 2048) {
        // ChoreographyTask: Verfügbarkeit absagen
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4096 == 4096) {
        // ParallelGateway (Join)
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          continue;
        }
      }
      
      if (_tokenState & 8192 == 8192) {
        // ChoreographyTask: Auftrag erstellen
        if (id == 9 && msg.sender == participants[15]) {
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16384 == 16384) {
        // ChoreographyTask: Grafik verschicken
        if (id == 10 && msg.sender == participants[18]) {
          _tokenState &= ~uint(16384);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32768 == 32768) {
        // ChoreographyTask: Anzeige übermitteln
        if (id == 11 && msg.sender == participants[20]) {
          _tokenState &= ~uint(32768);
          _tokenState |= 0;
          break;
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
