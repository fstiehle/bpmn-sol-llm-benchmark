// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:30:21.143Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_40ff8d9d_66c3_4f7e_a4dd_db25463b18c4 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- Dobijanje problema --->
        if (taskID == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- Dobijanje detaljnog opisa problema --->
        if (taskID == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Handle exclusive gateway logic
        _tokenState &= ~uint(4);
        
        // Check if condition is satisfied
        if (conditions & 1 == 1) {
          _tokenState |= 8; // Direct path to explanation
        } else {
          _tokenState |= 16; // Through support
        }
        continue;
      }
      
      if (_tokenState & 8 == 8) {
        // <--- Objašnjavanje rešenja problema --->
        if (taskID == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- Prosleđivanje problema podršci --->
        if (taskID == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- Davanje rešenja opeateru --->
        if (taskID == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // Return to explanation task
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        continue;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
