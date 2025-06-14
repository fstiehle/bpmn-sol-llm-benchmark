// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:23:48.163Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
  uint public tokenState = 1;
  address[6] public participants;
  constructor(address[6] memory _participants) {
    participants = _participants;
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
        _tokenState &= ~uint(2);
        _tokenState |= 4 | 8 | 16;
        continue;
      }
      if (_tokenState & 4 == 4) {
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(4);
        if ((_tokenState & (4 | 8 | 16)) == 0) {
          _tokenState |= 32;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(8);
        if ((_tokenState & (4 | 8 | 16)) == 0) {
          _tokenState |= 32;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(16);
        if ((_tokenState & (4 | 8 | 16)) == 0) {
          _tokenState |= 32;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }
      if (_tokenState & 64 == 64) {
        _tokenState &= ~uint(64);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
