// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:29:10.729Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_5aefb762_fb87_4c5e_96a2_1e48284acd78 {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask_1: zahtev za transportom
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask_2: slanje odgovora korisniku
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ChoreographyTask_3: uplata novca
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask_4: predaja paketa
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 16 == 16) {
        // Exclusive gateway with condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          // Illegal content found, go to parallel processing
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        } else {
          // No illegal content, go directly to customs
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue; 
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Parallel gateway - split for notifications
        _tokenState &= ~uint(32);
        _tokenState |= 128 | 256;
        continue; 
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask_5: obavestavanje korisnika
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 256 == 256) {
        // ChoreographyTask_6: obavestavanje nadleznih organa
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 512 == 512) {
        // Parallel gateway - join after notifications
        // Once both tasks are done, go to customs
        _tokenState &= ~uint(512);
        _tokenState |= 64;
        continue; 
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask_7: predaja paketa carini
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(64);
          _tokenState |= 1024;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // Exclusive gateway with condition: conditions & 2 == 2
        if (conditions & 2 == 2) {
          // Documentation is correct, send confirmation
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue; 
        } else {
          // Documentation incorrect, return package
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          continue; 
        }
      }
      
      if (_tokenState & 2048 == 2048) {
        // ChoreographyTask_9: slanje potvrde o isporuci paketa
        if (id == 9 && msg.sender == participants[16]) {
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break; // is end
        }
      }
      
      if (_tokenState & 4096 == 4096) {
        // ChoreographyTask_8: vracanje paketa korisniku
        if (id == 8 && msg.sender == participants[14]) {
          _tokenState &= ~uint(4096);
          _tokenState |= 0;
          break; // is end
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
