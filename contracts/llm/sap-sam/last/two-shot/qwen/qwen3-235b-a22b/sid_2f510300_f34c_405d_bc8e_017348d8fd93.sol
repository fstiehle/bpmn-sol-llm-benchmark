// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:49:05.825Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_2f510300_f34c_405d_bc8e_017348d8fd93 {
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
        // <--- sid-FD7DC3A3-4E50-496E-9742-AAD560A1242A StartEvent --->
        // <--- auto transition --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-34D6BA20-2030-44C1-BAE4-FC02D2526085 List Batches --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A1D8F530-6882-4DF3-845A-92F397C6C6CB Create Program --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
