// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:26:07.592Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_2e74919b_c2d6_44d6_9596_5771ad85f314 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 2 == 2) {
        // <--- sid-181F9D56-226F-4071-A541-5B34611F8C21 Auf Reservierung pruefen --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-E4C67638-32F7-4EF7-B567-F5CDC766B074 Freies Zimmer verfuegbar --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-95D5D543-0404-4C29-98F8-FD3EA102C79F In anderes Hotel verwiesen --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC Schluessel ausheandigen --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A25E4563-B053-45A5-987B-A0B3D3B3CCCF Exclusive Gateway --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          continue; 
        } else {
          // Default path
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-22F83BA6-496B-4257-ABA3-36229D63918F Exclusive Gateway --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          continue; 
        } else {
          // Default path
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-461AC4BA-58CF-4194-8464-2A0B8AD34054 Converging Gateway --->
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        continue; 
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-461AC4BA-58CF-4194-8464-2A0B8AD34054 Converging Gateway --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue; 
      }
      if (_tokenState & 512 == 512) {
        // <--- End Event sid-AA48C9CC-A2B1-407A-B43B-64DD64D25E67 --->
        _tokenState = 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}