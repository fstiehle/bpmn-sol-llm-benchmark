// test large Model - One Shot at 2025-06-02T19:32:44.647Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_ChoreographyExample3 {
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

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway Gateway_1bpkhpg --->
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (id == 4 && msg.sender == participants[0]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_0gnknm9 Confirm ETA --->
        if (id == 5 && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ParallelGateway Gateway_1klfaw3 --->
        _tokenState &= ~uint(16);
        _tokenState |= 64 | 128;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- ParallelGateway Gateway_0xcnzox --->
        _tokenState &= ~uint(32);
        _tokenState |= 256;
        continue;
      }
      if ((_tokenState & 64) == 64 && (_tokenState & 128) == 128) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ParallelGateway Gateway_0xcnzox join --->
        if ((_tokenState & 512) == 512) {
          _tokenState &= ~uint(256 | 512);
          _tokenState |= 1024;
        }
        continue;
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- endEvent Event_05susj6 --->
        _tokenState &= ~uint(2048);
        break;
      }
      break;
    }

    tokenState = _tokenState;
  }
}