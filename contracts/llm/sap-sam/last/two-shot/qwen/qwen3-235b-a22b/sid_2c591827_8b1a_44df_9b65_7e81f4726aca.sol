// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:37:22.004Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
  uint public tokenState = 1;
  address[13] public participants;
  uint public conditions;
  
  constructor(address[13] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // Task 1 - First contact (Author)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Task 2 - Inform Publisher (Editor)
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Task 3 - Instructions for publication (Publisher)
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // Exclusive Gateway after task 3 - diverging
        if (conditions & 1 == 1) {
          // Condition met, go to drafts
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        } else {
          // Condition not met, go to end
          _tokenState &= ~uint(8);
          _tokenState |= 64;
        }
        continue;
      }
      
      if (_tokenState & 16 == 16) {
        // Task 4 - drafts (Editor)
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Task 5 - Request for publishing (Publisher)
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // Exclusive Gateway after task 5 - diverging
        // This gateway has two outgoing paths
        // - default path to event-based gateway (bit 128)
        // - conditional path to end (bit 0)
        
        bool conditionMet = false;
        if (conditions & 1 == 1) {
          // Condition met, go to end
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          conditionMet = true;
        }
        
        if (!conditionMet) {
          // Condition not met, go to event-based gateway
          _tokenState &= ~uint(64);
          _tokenState |= 128;
        }
        
        continue;
      }
      
      if (_tokenState & 128 == 128) {
        // Event-based gateway - diverging
        // This gateway has two outgoing paths
        // - one to drafts (bit 256)
        // - one to cancel publishing (bit 512)
        
        // Activate both outgoing paths
        _tokenState &= ~uint(128);
        _tokenState |= 256 | 512;
        continue;
      }
      
      if ((_tokenState & 256) == 256) {
        // Task 4 - drafts (Editor) - loop back
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(256);
          _tokenState |= 32; // Go back to task 5
          id = 0;
          continue;
        }
      }
      
      if ((_tokenState & 512) == 512) {
        // Task 6 - cancel publishing (Editor)
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024; // Next is end
          id = 0;
          continue;
        }
      }
      
      if ((_tokenState & 1024) == 1024) {
        // End Event after cancel publishing
        _tokenState &= ~uint(1024);
        _tokenState |= 0; // Final state
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
