// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:36:41.269Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_7587b36b_ea62_4f16_9d3a_a151fb21e145 {
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
        // <--- Make travel offer --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- EventBasedGateway (offer choice) --->
        // <--- auto transition --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue; 
      }
      if (_tokenState & 4 == 4) {
        // <--- Reject offer --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
        // <--- Book travel --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Pay travel --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- Order ticket --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- EventBasedGateway (payment choice) --->
        // <--- auto transition --->
        _tokenState &= ~uint(32);
        _tokenState |= 64 | 128;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- Confirm payment --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- Refuse payment --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- End event --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        continue; 
      }
      if (_tokenState & 512 == 512) {
        // <--- End event --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue; 
      }
      if (_tokenState & 1024 == 1024) {
        // Process completed
        _tokenState &= ~uint(1024);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
