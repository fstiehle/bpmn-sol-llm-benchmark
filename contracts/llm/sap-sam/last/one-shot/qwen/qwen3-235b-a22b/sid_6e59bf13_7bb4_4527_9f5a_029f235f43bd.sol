// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:12:13.652Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_6e59bf13_7bb4_4527_9f5a_029f235f43bd {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 8 == 8) {
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
        } else {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        }
        continue;
      }
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[9]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 64 == 64) {
        if (3 == id && msg.sender == participants[5]) {
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break;
        }
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
