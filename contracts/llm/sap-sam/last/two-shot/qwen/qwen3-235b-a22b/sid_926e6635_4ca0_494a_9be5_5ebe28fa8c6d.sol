// test qwen/qwen3-235b-a22b - two-shot at 2025-06-14T00:43:44.491Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- auto transition from start event --->
        _tokenState &= ~uint(1);
        _tokenState |= 6; // activate both parallel paths
        continue;
      }
      
      if (_tokenState & 2 == 2) {
        // <--- choreographyTask_984B95C1-C450-4BCC-A703-06A3F1E372B8 (1) --->
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(2);
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- choreographyTask_74D17AC8-A5F1-49EC-AD9E-66623C00824A (2) --->
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          id = 0;
          continue;
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
