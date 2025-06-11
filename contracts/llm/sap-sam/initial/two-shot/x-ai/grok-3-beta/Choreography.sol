// test x-ai/grok-3-beta - two-shot at 2025-06-11T18:40:44.951Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_Choreography {
  uint public tokenState = 1; // Starting with the first task active
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
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Activate Gateway_1bpkhpg
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (2 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16; // Activate Gateway_0xcnzox (part of join)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (3 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16; // Activate Gateway_0xcnzox (part of join)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (4 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState = 0; // End of process
          break;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway_1bpkhpg Exclusive Gateway --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 32; // Activate Gateway_1yl9mch
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4 | 8; // Default path to Gateway_1klfaw3 (split to tasks)
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- Gateway_0xcnzox Parallel Join --->
        // Since it's a join, it should wait for both incoming tokens
        // But as tokenState might have multiple bits set, check if both paths are completed
        // Since we set it incrementally, we consider it active when set
        _tokenState &= ~uint(16);
        _tokenState |= 32; // Activate Gateway_1yl9mch
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- Gateway_1yl9mch Exclusive Gateway (default to ship) --->
        _tokenState &= ~uint(32);
        _tokenState |= 64; // Activate Ship goods task
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}