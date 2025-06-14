// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:59:33.284Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_19396877_be94_440c_98de_2cc3f663a397 {
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
        // <--- Definiranje problema --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Istraživanje problema --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- Detaljno istraživanje problema --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- Slanje rješenja --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
