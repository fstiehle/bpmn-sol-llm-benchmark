// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:32:01.158Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_6aff5cab_5e98_4188_a1ac_32801e4463a1 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // Task 1: Make offer
        if (taskID == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Exclusive gateway sid-B2A38002-B4CD-4F5D-888D-E1ACE18171B2
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Task 2: Reject offer
        if (taskID == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 512;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // Task 3: Book travel
        if (taskID == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // Task 4: Payment
        if (taskID == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Task 5: Order ticket
        if (taskID == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // Exclusive gateway sid-7B3D319C-003D-46CA-996D-B14EE586AA57
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
        if (conditions & 8 == 8) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // Task 6: Confirm payment
        if (taskID == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // Task 7: Refuse payment
        if (taskID == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // End event
        _tokenState = 0;
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
