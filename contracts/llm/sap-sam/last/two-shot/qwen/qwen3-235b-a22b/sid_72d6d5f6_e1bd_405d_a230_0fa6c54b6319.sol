// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:58:35.942Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
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
        // <--- sid-914D89A4 diverging gateway --->
        uint newBits = 0;
        bool cond1 = (conditions & 1) == 1;
        bool cond2 = (conditions & 2) == 2;
        if (cond1) newBits |= 4;
        if (cond2) newBits |= 8;
        if (newBits == 0) newBits |= 2;
        _tokenState &= ~uint(1);
        _tokenState |= newBits;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-87BBD4F0 choreographyTask A --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(2);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-22971FC7 choreographyTask B --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-6B496623 parallel split --->
        _tokenState &= ~uint(8);
        _tokenState |= 16 | 32;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-D6D85EBC choreographyTask A --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          if ((_tokenState & 32) == 0) _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-BE199BE7 choreographyTask B&amp;#10; --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(32);
          if ((_tokenState & 16) == 0) _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-6B0874A1 parallel join --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-875E037A converging gateway --->
        _tokenState &= ~uint(128);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
