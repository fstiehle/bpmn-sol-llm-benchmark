// test large Model - One Shot at 2025-06-05T15:23:18.395Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_ChoreographyExample4 {
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
        // <--- exclusiveGateway Gateway_1bpkhpg --->
        if ((conditions & 1 == 1)) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- parallelGateway Gateway_1klfaw3 --->
        _tokenState &= ~uint(4);
        _tokenState |= 24; // activate both parallel paths: tasks 1 and 2
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_0belpst Confirm ETA --->
        if (id == 4 && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 24 == 24) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(8); // only deactivate produce path
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- parallelGateway Gateway_0xcnzox --->
        if ((_tokenState & (16 + 8)) == (16 + 8)) {
          _tokenState &= ~uint(24);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- exclusiveGateway Gateway_1yl9mch --->
        if ((conditions & 2 == 2)) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- auto transition to end --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
      }
      break;
    }

    tokenState = _tokenState;
  }
}