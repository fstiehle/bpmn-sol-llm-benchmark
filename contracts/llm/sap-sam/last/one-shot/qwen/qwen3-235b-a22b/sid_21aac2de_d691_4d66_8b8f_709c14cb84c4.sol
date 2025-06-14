// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:13:32.049Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_21aac2de_d691_4d66_8b8f_709c14cb84c4 {
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
      // Start event (bit 1)
      if (_tokenState & 1 == 1) {
        // This is the start event, which directly triggers Task 1
        _tokenState &= ~uint(1);
        _tokenState |= 1;
        continue;
      }
      
      // Task 1: Aenderung senden
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Activate parallel gateway split
          id = 0;
          continue;
        }
      }
      
      // Parallel gateway split (bit 2)
      if (_tokenState & 2 == 2) {
        // This is a split parallel gateway, activate both Tasks 2 and 3
        _tokenState &= ~uint(2);
        _tokenState |= 4; // Activate Task 2
        _tokenState |= 8; // Activate Task 3
        continue;
      }
      
      // Task 2: Vorschlag bearbeiten (Lager -> Produktion)
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16; // Mark Task 2 completed
          id = 0;
          continue;
        }
      }
      
      // Task 3: Vorschlag bearbeiten (Planung -> Produktion)
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 32; // Mark Task 3 completed
          id = 0;
          continue;
        }
      }
      
      // Parallel gateway join (bits 16 and 32)
      if (_tokenState & 48 == 48) { // 16 | 32 = 48
        // Both Tasks 2 and 3 have completed, activate exclusive gateway
        _tokenState &= ~uint(48);
        _tokenState |= 64; // Activate exclusive gateway
        continue;
      }
      
      // Exclusive gateway 081E9232: Ok? 
      if (_tokenState & 64 == 64) {
        // This is the exclusive gateway, check conditions
        if (conditions & 1 == 1) {
          // Follow sequenceFlow A2833AF7 (Ok path)
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // Process ends
        } else {
          // Follow sequenceFlow CB40259E (Nein path)
          _tokenState &= ~uint(64);
          _tokenState |= 128; // Activate Task 4
          continue;
        }
      }
      
      // Task 4: Verhandlung ueber Meeting
      if (_tokenState & 128 == 128) {
        if (id == 4 && msg.sender == participants[7]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256; // Activate exclusive gateway F759C76E
          id = 0;
          continue;
        }
      }
      
      // Exclusive gateway F759C76E: OK?
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          // Follow sequenceFlow A811AAC6 (Ja path)
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // Process ends
        } else {
          // Follow sequenceFlow C15A8436 (conditions & 2 == 2 path)
          _tokenState &= ~uint(256);
          _tokenState |= 512; // Activate Task 5
          continue;
        }
      }
      
      // Task 5: Geschaeftsfuehrer informieren
      if (_tokenState & 512 == 512) {
        if (id == 5 && msg.sender == participants[10]) {
          _tokenState &= ~uint(512);
          _tokenState |= 0; // Process ends
          break;
        }
      }
      
      // If we reach here, no valid action was taken
      break;
    }
    
    tokenState = _tokenState;
  }
}
