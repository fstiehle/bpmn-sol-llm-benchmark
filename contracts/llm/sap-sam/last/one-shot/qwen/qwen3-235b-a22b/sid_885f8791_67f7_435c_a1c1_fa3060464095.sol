// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:34:34.227Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_885f8791_67f7_435c_a1c1_fa3060464095 {
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
      // Check current token state and execute tasks accordingly
      
      // Initial state with start event
      if (_tokenState & 1 == 1) {
        // choreographyTask Slanje problema (sid-21C2A13B-9856-4CDC-BC31-34E7F073E8D1)
        if (taskID == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);   // Clear previous state
          _tokenState |= 2;          // Move to next task
          taskID = 0;                // Reset taskID
          continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // choreographyTask Dobijanje detaljnog opisa (sid-24F4EDD0-56DB-45C9-87A2-315B19CABB82)
        if (taskID == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);   // Clear previous state
          _tokenState |= 4;          // Move to next task
          taskID = 0;                // Reset taskID
          continue; 
        }
      }
      
      if (_tokenState & 4 == 4) {
        // exclusiveGateway Operater zna da resi? (sid-DF5234BE-0D11-41B5-BBE4-7CDAD318FCCD)
        bool condition1 = (conditions & 1) == 1;
        
        _tokenState &= ~uint(4);  // Clear current state
        
        if (condition1) {
          _tokenState |= 8;  // Move to Slanje resenja task
        } else {
          _tokenState |= 16; // Move to Trazenje resenja task
        }
        continue;
      }
      
      if (_tokenState & 8 == 8) {
        // choreographyTask Slanje resenja (sid-87EECDEB-03C2-4616-A431-BCB2CEB167CB)
        if (taskID == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);   // Clear previous state
          _tokenState |= 0;          // Process complete
          break; // End of process
        }
      }
      
      if (_tokenState & 16 == 16) {
        // choreographyTask Trazenje resenja (sid-D5882BC3-50C0-45B2-8D82-355592957A2E)
        if (taskID == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);  // Clear previous state
          _tokenState |= 32;         // Move to next task
          taskID = 0;                // Reset taskID
          continue; 
        }
      }
      
      if (_tokenState & 32 == 32) {
        // exclusiveGateway Podrska I nivoa zna da resi (sid-AC83CCB8-91BB-415D-BDF2-A3930AD4CEE2)
        bool condition2 = (conditions & 2) == 2;
        
        _tokenState &= ~uint(32);  // Clear current state
        
        if (condition2) {
          _tokenState |= 64;  // Move to Slanje resenja task
        } else {
          _tokenState |= 128; // Move to Trazenje resenja task
        }
        continue;
      }
      
      if (_tokenState & 64 == 64) {
        // choreographyTask Slanje resenja (sid-199F4922-5E06-4997-BC33-ECAD360D3C23)
        if (taskID == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);  // Clear previous state
          _tokenState |= 8;          // Move back to Slanje resenja task
          taskID = 0;                // Reset taskID
          continue; 
        }
      }
      
      if (_tokenState & 128 == 128) {
        // choreographyTask Trazenje resenja (sid-58B19BA7-610B-4E56-8B71-D22B9E647FA4)
        if (taskID == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);  // Clear previous state
          _tokenState |= 256;         // Move to slanje resenja task
          taskID = 0;                 // Reset taskID
          continue; 
        }
      }
      
      if (_tokenState & 256 == 256) {
        // choreographyTask slanje resenja (sid-F5162031-F819-4F09-89B4-31B1696E7694)
        if (taskID == 7 && msg.sender == participants[13]) {
          _tokenState &= ~uint(256);  // Clear previous state
          _tokenState |= 64;         // Move back to Slanje resenja task
          taskID = 0;                // Reset taskID
          continue; 
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
