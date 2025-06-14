// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:37:55.188Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_49750b77_ac60_4753_9546_7a2f420eb466 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-ADE2BBE3-1E47-4634-867B-5FCC470C7C42 saopstavanje problema --->
        if (1 == id && msg.sender == participants[0]) {
          // Execute task
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- sid-BC1B9586-C693-42A6-9707-0E2713E56C27 dobijanje opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // Execute task
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Handle exclusive gateway sid-9994DED5-787E-4BE2-AABA-D34534B31509
        if (conditions & 1 == 1) {
          // Condition satisfied, activate target task
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        } else {
          // Default flow
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28 saopstavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          // Execute task
          _tokenState &= ~uint(8);
          _tokenState |= 0; // End of process
          break;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- sid-2B0045D9-D674-4EEE-BC16-D6EFE522F432 konsultovanje o problemu --->
        if (4 == id && msg.sender == participants[6]) {
          // Execute task
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Handle exclusive gateway sid-6ED7CC8A-7A9D-4CED-8883-81491F7B549B
        if (conditions & 2 == 2) {
          // Condition satisfied, activate target task
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        } else {
          // Default flow
          _tokenState &= ~uint(32);
          _tokenState |= 128;
        }
        continue;
      }
      
      if (_tokenState & 64 == 64) {
        // <--- sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 objasnjavanje resenja --->
        if (6 == id && msg.sender == participants[11]) {
          // Execute task
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // <--- sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965 vracanje resenja --->
        if (7 == id && msg.sender == participants[12]) {
          // Execute task
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // Handle converging gateway sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE
        // This gateway has two incoming flows: from sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 (6) and sid-07083626-B2A5-403E-A911-D82EBCE5B342 (9)
        // We need to check if both have been activated
        if ((_tokenState & 64) == 64 || (_tokenState & 256) == 256) {
          // One of the incoming paths is active, but not both
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
        }
        continue;
      }
      
      if (_tokenState & 1024 == 1024) {
        // Handle converging gateway sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57
        // This gateway has two incoming flows: from sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965 (7) and sid-46E63A5C-BB56-45F5-A58F-8DBAB44CCCAC (conditions & 1 == 1)
        // We need to check if both have been activated
        if ((_tokenState & 8) == 8 || (_tokenState & 512) == 512) {
          // One of the incoming paths is active, but not both
          _tokenState &= ~uint(1024);
          _tokenState |= 8;
        }
        continue;
      }
      
      if (_tokenState & 128 == 128) {
        // <--- sid-31F0A68E-0C14-4B89-8AB3-A1C46B586611 prosledjivanje problema podrsci 2.nivoa --->
        if (5 == id && msg.sender == participants[8]) {
          // Execute task
          _tokenState &= ~uint(128);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
