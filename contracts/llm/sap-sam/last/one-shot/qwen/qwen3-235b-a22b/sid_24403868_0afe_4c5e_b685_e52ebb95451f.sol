// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T08:34:23.712Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_24403868_0afe_4c5e_b685_e52ebb95451f {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      // Task 1: Show the identification bar code
      if (_tokenState & 1 == 1) {
        if (taskID == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
        break;
      }

      // Task 2: Prepare Pacient
      if (_tokenState & 2 == 2) {
        if (taskID == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
        break;
      }

      // Task 4: Measure Height
      if (_tokenState & 4 == 4) {
        if (taskID == 4 && msg.sender == participants[7]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
        break;
      }

      // Task 3: Save Measure
      if (_tokenState & 8 == 8) {
        if (taskID == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
        break;
      }

      break;
    }
  }
}
