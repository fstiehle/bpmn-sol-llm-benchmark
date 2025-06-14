// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:11:49.351Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_149e0d98_2d57_4cee_bd14_110839248907 {
  uint public tokenState = 1;
  address[4] public participants;
  
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-CE6FC14A-131E-46BC-BC22-EB91FC9B3DDC Nach Geld &fragen --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F2D422F5-0187-4B47-AF88-7E50BA466EE1 Geld geben --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
