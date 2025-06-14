// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T14:40:20.503Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_9ad64969_60c2_43c3_9b9e_05ffbbfd375c {
  uint public tokenState = 1;
  address[2] public participants;
  uint public conditions;
  
  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-C3E521CC-C26D-4D59-B7EF-2619EC56954B Paga Fotografo --->
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        _tokenState = 0;
        break;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
