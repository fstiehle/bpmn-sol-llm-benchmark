// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:21:04.695Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_24949f80_f61f_4372_83d5_6a6139f7126e {
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
        // ChoreographyTask: Anfrage stellen (task 1)
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask: Angebot vorlegen (task 2)
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      
      // Handle exclusive gateway
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // Activate Angebot ablehnen (task 3)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        } else {
          // Activate Angebot zusagen (task 4)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask: Angebot ablehnen (task 3)
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask: Angebot zusagen (task 4)
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask: Verfügbarkeit prüfen (task 5)
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          // Activate both instances of Kaffeezulieferer
          _tokenState |= 64 | 128;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 64 == 64) {
        // First instance of Kaffeezulieferer for task 6
        if (6 == id && msg.sender == participants[11]) {
          _tokenState &= ~uint(64);
          // Check if second instance is also done
          if (_tokenState & 128 == 0) {
            _tokenState |= 256;
          }
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 128 == 128) {
        // Second instance of Kaffeezulieferer for task 6
        if (6 == id && msg.sender == participants[11]) {
          _tokenState &= ~uint(128);
          // Check if first instance is also done
          if (_tokenState & 64 == 0) {
            _tokenState |= 256;
          }
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 256 == 256) {
        // ChoreographyTask: Kaffeebohnen bestellen (task 6)
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 512 == 512) {
        // ChoreographyTask: Kaffeebohnen liefern (task 7)
        if (7 == id && msg.sender == participants[13]) {
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
