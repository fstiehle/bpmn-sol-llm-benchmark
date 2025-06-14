// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:45:39.927Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_a00b0462_4ff5_4e14_9207_23ebd44452ef {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // Task 1: Slanje problema
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Task 2: Dobijanje detaljnog opisa problema
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Exclusive gateway: Operater zna da resi?
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      
      if (_tokenState & 8 == 8) {
        // Task 3: Slanje resenja
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // Task 4: Trazenje resenja
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Exclusive gateway: Podrska I nivoa zna da resi?
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
        }
        continue;
      }
      
      if (_tokenState & 64 == 64) {
        // Task 5: Slanje resenja
        if (id == 5 && msg.sender == participants[9]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // Task 6: Trazenje resenja
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // Join point for Slanje resenja and Trazenje resenja
        _tokenState &= ~uint(256);
        _tokenState |= 8;
        continue;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
