// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:35:24.658Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_6464baf1_e9c8_4917_8881_c3036e949acd {
  uint public tokenState = 1;
  address[6] public participants;
  
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 Request Reservation --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 Inform Host --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-14F93670-7F19-4E8D-985B-652CC65D24D6 Accept Reservation --->
        if (3 == id && msg.sender == participants[4]) {
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
