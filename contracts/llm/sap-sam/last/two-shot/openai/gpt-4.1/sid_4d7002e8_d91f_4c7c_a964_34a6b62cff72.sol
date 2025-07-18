// test openai/gpt-4.1 - two-shot at 2025-06-12T01:01:47.065Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_4d7002e8_d91f_4c7c_a964_34a6b62cff72 {
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
        // <--- sid-EC41FCC8-D686-462C-9493-2F2CDFA9052F --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusive gateway sid-7B36D673-5B79-45DE-A171-D780235447B1 --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
        // default flow
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}