// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:30:18.540Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_690c0598_bdb0_4f87_8de2_12b2e7c0eae0 {
  uint public tokenState = 1;
  address[2] public participants;
  
  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-19CCF509-8879-44DD-A54A-39E796DBBBCB Suscribir Editorial --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
