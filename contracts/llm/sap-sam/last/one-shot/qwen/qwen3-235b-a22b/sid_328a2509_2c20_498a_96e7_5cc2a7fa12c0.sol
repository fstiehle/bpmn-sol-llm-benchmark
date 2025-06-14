// test qwen/qwen3-235b-a22b - one-shot at 2025-06-14T00:34:58.668Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_328a2509_2c20_498a_96e7_5cc2a7fa12c0 {
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
      if (_tokenState & 1 == 1) {
        _tokenState &= ~uint(1);
        _tokenState |= 2 | 4;
        continue; 
      }
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[5]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 32 | 64;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(32);
        if ((_tokenState & 64) == 0) {
          _tokenState = 0;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[7]) {
        _tokenState &= ~uint(64);
        if ((_tokenState & 32) == 0) {
          _tokenState = 0;
        }
        id = 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
