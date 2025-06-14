// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:24:18.506Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1 Anrufen --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway lösbar? --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_2 Problem lösen --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        break;
        }
        break;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_3 Notiz --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        break;
        }
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
