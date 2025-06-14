// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T13:56:01.532Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- StartEvent --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue; 
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-7B36D673-5B79-45DE-A171-D780235447B1 --->
        _tokenState &= ~uint(2);
        _tokenState |= 4 | 8;
        continue; 
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        id = 0;
        continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
