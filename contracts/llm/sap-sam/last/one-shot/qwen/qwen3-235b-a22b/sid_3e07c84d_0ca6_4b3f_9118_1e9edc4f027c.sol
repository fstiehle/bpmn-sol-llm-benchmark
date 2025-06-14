// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:05:17.408Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_3e07c84d_0ca6_4b3f_9118_1e9edc4f027c {
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
        // <--- ChoreographyTask 1 Slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask 2 Dobijanje detaljnog opisa --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Gateway sid-7DEAF8F3-7048-4D51-B790-6A8016EA5D34 --->
        // Evaluate conditions
        bool hasCondition = false;
        // Check condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState |= 32;
          hasCondition = true;
        }
        // Check default flow
        if (!hasCondition) {
          _tokenState |= 16;
        }
        _tokenState &= ~uint(4);
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- SequenceFlow default of Gateway sid-7DEAF8F3-7048-4D51-B790-6A8016EA5D34 --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- SequenceFlow conditions & 1 == 1 of Gateway sid-7DEAF8F3-7048-4D51-B790-6A8016EA5D34 --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask 3 Slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask 4 Trazenje resenja --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- Gateway sid-EA1AC6C8-B53F-4C26-BA30-5796CA6184D4 --->
        // Evaluate conditions
        bool hasCondition = false;
        // Check condition: conditions & 2 == 2
        if (conditions & 2 == 2) {
          _tokenState |= 1024;
          hasCondition = true;
        }
        // Check default flow
        if (!hasCondition) {
          _tokenState |= 512;
        }
        _tokenState &= ~uint(256);
        continue;
      }
      if (_tokenState & 512 == 512) {
        // <--- SequenceFlow default of Gateway sid-EA1AC6C8-B53F-4C26-BA30-5796CA6184D4 --->
        _tokenState &= ~uint(512);
        _tokenState |= 4096;
        continue;
      }
      if (_tokenState & 1024 == 1024) {
        // <--- SequenceFlow conditions & 2 == 2 of Gateway sid-EA1AC6C8-B53F-4C26-BA30-5796CA6184D4 --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        continue;
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask 5 Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask 6 Trazenje resenja --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask 7 Slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
