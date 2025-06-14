// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:29:09.778Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
  uint public tokenState = 1;
  address[4] public participants;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- Parallel Split Gateway --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 Call decision --->
        if (id == 1 && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        if ((_tokenState & 4) == 0) {
          _tokenState = 0;
        }
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE Call decision --->
        if (id == 2 && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        if ((_tokenState & 2) == 0) {
          _tokenState = 0;
        }
        id = 0;
        continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
