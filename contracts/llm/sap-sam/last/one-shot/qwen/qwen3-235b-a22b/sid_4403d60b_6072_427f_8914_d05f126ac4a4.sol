// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:27:06.089Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_4403d60b_6072_427f_8914_d05f126ac4a4 {
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
        // ChoreographyTask: Pronalaženje dostupnog primjerka knjige (1)
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Exclusive gateway after Pronalaženje dostupnog primjerka knjige
        // Check conditions for all outgoing sequence flows
        bool condition1 = (conditions & 2 == 2);
        if (condition1) {
          // Task 7: Rezerviranje knjige
          _tokenState &= ~uint(2);
          _tokenState |= 128;
          continue;
        } else {
          // Default flow: Task 2: Posuđivanje knjige
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ChoreographyTask: Posuđivanje knjige (2)
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // Exclusive gateway after Posuđivanje knjige
        // Check conditions for all outgoing sequence flows
        bool condition1 = (conditions & 1 == 1);
        if (condition1) {
          // Task 3: Vraćanje posuđene knjige
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        } else {
          // Default flow: Task 4: Registriranje gubitka knjige
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask: Vraćanje posuđene knjige (3)
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // Exclusive gateway after Vraćanje posuđene knjige
        // Check conditions for all outgoing sequence flows
        bool condition1 = (conditions & 1 == 1);
        if (condition1) {
          // Task 6: Plaćanje zakasnine
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        } else {
          // Default flow: End
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask: Registriranje gubitka knjige (4)
        if (4 == id && msg.sender == participants[7]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask: Plaćanje vrijednosti izgubljene knjiige (5)
        if (5 == id && msg.sender == participants[9]) {
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // ChoreographyTask: Plaćanje zakasnine (6)
        if (6 == id && msg.sender == participants[11]) {
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask: Rezerviranje knjige (7)
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break;
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
