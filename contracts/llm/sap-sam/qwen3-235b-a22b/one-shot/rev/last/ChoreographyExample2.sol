// test GPT 4.1 - One Shot Revised at 2025-06-05T15:26:51.806Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_rev_ChoreographyExample2 {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (0 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // Exclusive Gateway Gateway_1bpkhpg
        bool conditionMatched = false;
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          conditionMatched = true;
        }
        if (!conditionMatched) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (4 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // Parallel Gateway Gateway_1klfaw3
        _tokenState &= ~uint(8);
        _tokenState |= 128 | 32;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // Parallel Gateway Gateway_1yl9mch
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (2 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (1 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // Parallel Gateway Gateway_0xcnzox
        bool allIncomingActive = (_tokenState & (128 | 256)) == (128 | 256);
        if (allIncomingActive) {
          _tokenState &= ~uint(128 | 256);
          _tokenState |= 512;
        }
        continue;
      }
      if (_tokenState & 256 == 256) {
        // Parallel Gateway Gateway_0xcnzox - already handled with 128
        continue;
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (3 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}