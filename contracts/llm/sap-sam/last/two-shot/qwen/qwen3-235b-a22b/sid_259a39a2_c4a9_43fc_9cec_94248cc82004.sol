// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:21:36.844Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_259a39a2_c4a9_43fc_9cec_94248cc82004 {
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
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-8A3C47CF-9A10-43C8-905F-A5396A03A63B fdsagragr --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <---  auto transition to end  --->
        _tokenState &= ~uint(2);
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
