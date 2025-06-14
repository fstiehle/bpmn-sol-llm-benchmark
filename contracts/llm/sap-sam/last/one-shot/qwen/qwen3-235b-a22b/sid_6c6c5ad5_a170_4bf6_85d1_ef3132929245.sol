// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:04:46.634Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_6c6c5ad5_a170_4bf6_85d1_ef3132929245 {
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
    
    while(_tokenState != 0) {
      // Task 1: Saopstava problem
      if (_tokenState & 1 == 1 && id == 1 && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
      }
      
      // Task 2: Trazi detaljniji opis
      if (_tokenState & 2 == 2 && id == 2 && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
      }
      
      // Gateway 1: [Da Jane Doe da resi problem?]
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // Condition path
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        } else {
          // Default path
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      
      // Task 3: Saopstava resenje
      if (_tokenState & 8 == 8 && id == 3 && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
      }
      
      // Task 4: Trazi pomoc
      if (_tokenState & 16 == 16 && id == 4 && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue;
      }
      
      // Gateway 2: [Da Jane Doe da resi problem?]
      if (_tokenState & 64 == 64) {
        if (conditions & 2 == 2) {
          // Condition path
          _tokenState &= ~uint(64);
          _tokenState |= 128;
        } else {
          // Default path
          _tokenState &= ~uint(64);
          _tokenState |= 256;
        }
        continue;
      }
      
      // Task 5: Saopstava resenje problema
      if (_tokenState & 128 == 128 && id == 5 && msg.sender == participants[8]) {
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue;
      }
      
      // Task 6: Trazi pomoc
      if (_tokenState & 256 == 256 && id == 6 && msg.sender == participants[10]) {
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue;
      }
      
      // Task 7: Saopstava problem
      if (_tokenState & 1024 == 1024 && id == 7 && msg.sender == participants[12]) {
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue;
      }
      
      // Gateway 3: Converging
      if (_tokenState & 512 == 512 || _tokenState & 2048 == 2048) {
        _tokenState &= ~uint(512 | 2048);
        _tokenState |= 4096;
        continue;
      }
      
      // Gateway 4: Converging
      if (_tokenState & 4096 == 4096) {
        _tokenState &= ~uint(4096);
        _tokenState = 0; // Process completed
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
