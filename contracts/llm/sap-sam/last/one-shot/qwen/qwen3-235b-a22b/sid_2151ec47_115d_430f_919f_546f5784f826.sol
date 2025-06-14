// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:09:32.689Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_2151ec47_115d_430f_919f_546f5784f826 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        if (id == 7 && msg.sender == participants[13]) {
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        if (id == 5 && msg.sender == participants[9]) {
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        _tokenState &= ~uint(512);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
