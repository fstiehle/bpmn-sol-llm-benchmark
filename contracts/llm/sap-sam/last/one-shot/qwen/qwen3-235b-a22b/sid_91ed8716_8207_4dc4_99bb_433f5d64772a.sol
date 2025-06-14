// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:03:16.634Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_91ed8716_8207_4dc4_99bb_433f5d64772a {
  uint public tokenState = 1;
  address[8] public participants;
  
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // Task 1: Wohnungsart_Bedarfserhebung
        if (taskID == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Task 2: Klaerung_der_Rechtsform_vom_Objekt
        if (taskID == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Task 3: Baufeldentwicklung
        if (taskID == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // Task 4: Abstimmung__Bedarf_
        if (taskID == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState = 0; // End process
          break;
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
