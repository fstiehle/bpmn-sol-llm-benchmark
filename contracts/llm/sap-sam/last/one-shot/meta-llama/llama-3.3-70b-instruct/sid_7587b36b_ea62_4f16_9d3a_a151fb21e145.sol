// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:47:28.943Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_7587b36b_ea62_4f16_9d3a_a151fb21e145 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_B12D1FA0 Make travel offer --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_D67A86B4 Reject offer --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_8F01D694 Book travel --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_F0B0307D Pay travel --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_B42401DD Order ticket --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        }
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_E5E15A79 Confirm payment --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_8B3FC931 Refuse payment --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
