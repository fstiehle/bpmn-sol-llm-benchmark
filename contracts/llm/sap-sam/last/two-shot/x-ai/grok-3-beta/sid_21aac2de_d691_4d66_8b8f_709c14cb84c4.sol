// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:22:07.283Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_21aac2de_d691_4d66_8b8f_709c14cb84c4 {
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
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-06D8F2D0-6BD1-4AF1-B057-F2BDF456D669 Aenderung senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A06E9F8A-1AFE-44B0-B216-2031CB8BE358 Vorschlag bearbeiten --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-03DBAEBA-74CD-4B04-BD71-F56E32E84F02 Vorschlag bearbeiten --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7 Verhandlung ueber Meeting --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-F8A4FB9C-08D5-433D-8DA5-4990DE96F98E Geschaeftsfuehrer informieren --->
        if (5 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Parallel Gateway Diverging sid-C0AFA4ED-0702-4751-8DF3-2C8A14C92959 --->
        _tokenState &= ~uint(2);
        _tokenState |= 20; // Activate both outgoing paths (4 + 16)
        continue; 
      }
      if (_tokenState & 40 == 40) {
        // <--- Parallel Gateway Converging sid-1133F5B6-D5E3-45A1-B3AA-C41BC9AAA7D5 --->
        _tokenState &= ~uint(40);
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- Exclusive Gateway sid-081E9232-C01C-420D-A833-6C22805EF577 --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(64);
          _tokenState |= 0; // Directly to end
          break; // is end
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 128; // Default path to task 4
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- Exclusive Gateway sid-F759C76E-18F3-4988-9440-EC54330EC30C --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(256);
          _tokenState |= 512; // Path to task 5
          continue; 
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 0; // Default path to end
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Check if other parallel path is active for converging gateway --->
        if (_tokenState & 32 == 32) {
          _tokenState &= ~uint(8);
          _tokenState |= 40; // Both paths active for converging gateway
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- Check if other parallel path is active for converging gateway --->
        if (_tokenState & 8 == 8) {
          _tokenState &= ~uint(32);
          _tokenState |= 40; // Both paths active for converging gateway
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}