// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T14:17:39.257Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
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
    
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- Make Travel Offer --->
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        _tokenState = 0;
        break;
      }
      
      if (_tokenState & 8 == 8) {
        // <--- Pay Travel --->
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- Confirm Booking --->
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- Pay Travel --->
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // <--- Order Ticket --->
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // <--- Confirm Payment --->
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        _tokenState = 0;
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
