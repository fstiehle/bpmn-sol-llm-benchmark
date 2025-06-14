// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:48:04.901Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_9f1baa6b_3120_4b80_a997_c90b03aee22b {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B42E1B08-155A-4A95-9B09-E46F90D9B584 Make travel offer --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-EFD4788E-A1A4-40E5-A500-0970010990DD Place order --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 Reject Order --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 Apply order --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-6676D52C-DF78-4BB4-885E-3E6236D6B9D3 Confirm booking --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-6EE679BB-748F-4253-B501-87CCF2E0D7D0 Pay travel --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-8D8EFFEB-C49E-4DC9-B6B6-8AC520B8A50C Order ticket --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-795C6F26-3630-45A8-BAB6-DE8820B8DBB0 Refuse payment --->
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-49741E13-1B13-422C-8AD2-6B8241F6E32E Confirm payment --->
        if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-E7E1374C-CB39-4070-BF5F-E7518BFE6888 Event-based Gateway --->
        // No conditional logic specified, following both paths as per event-based gateway
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16;
        continue; 
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-798ECEE9-70E6-446D-B76B-F22BF7F51E68 Exclusive Gateway --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue; 
        } else {
          // Default path
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}