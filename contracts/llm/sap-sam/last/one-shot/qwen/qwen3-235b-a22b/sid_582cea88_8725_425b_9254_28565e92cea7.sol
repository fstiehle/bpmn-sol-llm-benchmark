// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:14:05.103Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_582cea88_8725_425b_9254_28565e92cea7 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- StartEvent --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-1A1E8E50-B672-4475-B6FD-5DEA9B1225EC send Credit Card Application --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-9D500E37-A113-4014-B70C-F3B21B1F5167 Applicant suitable? --->
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 256;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-8FF1ED8F-5296-456F-A095-9C13C881D5D1 send Credt File request --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-D68AD0BC-AE79-411E-A3E0-5B6EF2DC32E1 send Credit File --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-C9868726-531B-42B7-ADD1-EBF992BE647C Credit Card eligable? --->
        if ((conditions & 2) == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 256;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-2C0F233E-EB17-4C7B-8E3A-02D33BA6BDA2 send Application Acceptance --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8 --->
        _tokenState &= ~uint(256);
        _tokenState |= 128;
        continue;
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-04D38013-6E3C-4B41-ABB6-7322759E40D7 send Application rejection --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- EndEvent --->
        _tokenState &= ~uint(512);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
