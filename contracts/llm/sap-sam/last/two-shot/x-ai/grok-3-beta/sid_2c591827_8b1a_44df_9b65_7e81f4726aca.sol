// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:25:17.103Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
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
        // <--- sid-1ED0DF23-B541-4FA6-8580-D03802881F5C First contact --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-08335AEB-B1BF-426B-99AB-8C8530EEF0FB Inform Publisher --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EEFBB567-306F-49EC-8788-5EB90B7063D7 Instructions for publication --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-F3EC0F07-56AB-43B6-8395-E9067794DC02 drafts --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-879015FA-6568-4923-9101-3F50983FBBBE Request for publishing --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-4876DF19-BE6D-402C-864F-A93BA7F6B786 cancel publishing --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-8967CB45-5A2A-4CE6-9ABB-E8617248BF3E converging gateway --->
        // <--- auto transition --->
        _tokenState &= ~uint(8);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-728D1640-42A6-4207-AABA-59C4E09E64FB event-based gateway --->
        // <--- auto transition --->
        _tokenState &= ~uint(256);
        _tokenState |= 16 | 128;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-05C0E28A-923E-47F1-82E3-1CB04BD358E6 diverging gateway --->
        if (conditions & 1 == 1) {
          // <--- auto transition --->
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          continue;
        } else {
          // <--- default path --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}