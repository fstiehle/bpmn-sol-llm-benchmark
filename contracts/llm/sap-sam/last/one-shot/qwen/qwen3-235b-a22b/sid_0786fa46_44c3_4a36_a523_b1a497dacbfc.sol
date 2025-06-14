// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:21:55.005Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_0786fa46_44c3_4a36_a523_b1a497dacbfc {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask_1
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // Parallel Split Gateway
        _tokenState &= ~uint(2);
        _tokenState |= 4 | 8;
        continue;
      }
      if (_tokenState & 4 == 4) {
        // ChoreographyTask_2
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // ChoreographyTask_3
        if (3 == id && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // Parallel Join Gateway
        if ((_tokenState & 4) == 0 && (_tokenState & 32) == 0) {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // ChoreographyTask_4
        if (4 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // ChoreographyTask_5
        if (5 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // ChoreographyTask_6
        if (6 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // ChoreographyTask_7
        if (7 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // ChoreographyTask_8
        if (8 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(512);
          tokenState = 0;
          break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
