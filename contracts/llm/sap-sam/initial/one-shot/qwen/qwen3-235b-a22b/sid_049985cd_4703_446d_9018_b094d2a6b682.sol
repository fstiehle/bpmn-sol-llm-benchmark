// test qwen/qwen3-235b-a22b - one-shot at 2025-06-11T19:12:51.478Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
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
        // Start event
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      
      if (_tokenState & 2 == 2) {
        // Make travel offer (Task ID 1)
        if (1 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // First exclusive gateway
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        } else if (conditions & 2 == 2) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      
      if (_tokenState & 8 == 8) {
        // Reject offer (Task ID 2)
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // Book Travel & confirm booking (Task ID 3)
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Pay Travel (Task ID 4)
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // Order ticket (Task ID 5)
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // Second exclusive gateway
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
        } else if (conditions & 8 == 8) {
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
        }
        continue;
      }
      
      if (_tokenState & 512 == 512) {
        // Confirm payment (Task ID 6)
        if (6 == id && msg.sender == participants[11]) {
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // Refuse payment (Task ID 7)
        if (7 == id && msg.sender == participants[13]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // End event for reject offer
        tokenState = 0;
        break;
      }
      
      if (_tokenState & 2048 == 2048) {
        // End event for payment confirmation
        tokenState = 0;
        break;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
