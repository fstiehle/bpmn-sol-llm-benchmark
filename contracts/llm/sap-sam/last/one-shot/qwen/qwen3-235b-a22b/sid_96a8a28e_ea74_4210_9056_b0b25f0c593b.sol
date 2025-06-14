// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:11:04.999Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_96a8a28e_ea74_4210_9056_b0b25f0c593b {
  uint public tokenState = 1;
  address[6] public participants;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask sid-89EFB759-5389-4CF2-A380-3A6C78ED3761
        if (1 == id && msg.sender == participants[0]) {
        // Custom code for task execution
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // ChoreographyTask sid-B47C973B-735E-4532-89AB-E7D29BF27ECF
        if (2 == id && msg.sender == participants[2]) {
        // Custom code for task execution
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // ChoreographyTask sid-88083845-6E37-41F4-B362-BC50E0F51A8C
        if (3 == id && msg.sender == participants[4]) {
        // Custom code for task execution
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
