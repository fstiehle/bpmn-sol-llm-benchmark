// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:40:05.215Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_8884dab2_f4b9_4e23_acd1_d28ccdb9c337 {
  uint public tokenState = 1;
  address[4] public participants;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-955E5290-E3D0-40E1-93E5-02CD7548D841 Receive cancel request --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-96719258-A235-4848-886C-7E1C342956DB Receive cancel request processed notification --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
