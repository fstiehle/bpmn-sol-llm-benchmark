// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:03:10.511Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_3b5e1e61_6b14_4120_b06e_7436bebbcf78 {
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
        // <--- Start Event --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_94F70433-8341-46E2-BDF2-4618E585F5BF:1 (TAKE ORDER) --->
        if (taskID == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_BEAA42E4E-8B88-4FFE-BB71-CE36365C328F:2 (RECEIVE ORDER) --->
        if (taskID == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- Exclusive Gateway: Prepare order alone or forward to Chef? --->
        if (conditions & 1 == 1) {
          // Condition satisfied, follow sequence flow
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        } else {
          // Follow default sequence flow
          _tokenState &= ~uint(8);
          _tokenState |= 4096;
        }
        continue;
      }
      
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_9220F603-B5F1-4BEB-99A8-BF4786E5CD37:5 (RECEIVE ORDER) --->
        if (taskID == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_2F7E36B3-59B6-4382-8BD1-91129722202E:6 (ASSESS PREPARED ORDER) --->
        if (taskID == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // <--- Exclusive Gateway: Is the prepared order approved? --->
        if (conditions & 2 == 2) {
          // Condition satisfied, follow sequence flow
          _tokenState &= ~uint(64);
          _tokenState |= 2048;
        } else {
          // Follow default sequence flow
          _tokenState &= ~uint(64);
          _tokenState |= 1024;
        }
        continue;
      }
      
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_C0851B6B-257A-46E5-A1D0-866B5BC469AD:4 (PREPARE ORDER) --->
        if (taskID == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask_C379B774-4A75-45FB-90E2-803FCA4E186B:3 (SERVE ORDER) --->
        if (taskID == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(8192);
          _tokenState |= 512;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_3A161C1A-E002-42B1-8D32-B26788B81967:7 (RECEIVE ORDER) --->
        if (taskID == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // <--- End Event --->
        _tokenState = 0;
        break;
      }
      
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_C379B774-4A75-45FB-90E2-803FCA4E186B:3 (SERVE ORDER) --->
        if (taskID == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_3A161C1A-E002-42B1-8D32-B26788B81967:7 (RECEIVE ORDER) --->
        if (taskID == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          taskID = 0;
          continue;
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
