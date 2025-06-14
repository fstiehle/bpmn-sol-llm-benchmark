// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:10:36.676Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_124c4d40_f511_4da2_89b9_e31e3d2a42c2 {
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
      // State 1: Vastaanota korvaushakemus
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      // State 2: Lähetä kirje
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      // State 4: End event
      if (_tokenState & 4 == 4) {
        _tokenState = 0;
        break;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
