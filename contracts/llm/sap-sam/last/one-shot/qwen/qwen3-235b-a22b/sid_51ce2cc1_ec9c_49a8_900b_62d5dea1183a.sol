// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:59:39.237Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_51ce2cc1_ec9c_49a8_900b_62d5dea1183a {
  uint public tokenState = 1;
  address[4] public participants;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
