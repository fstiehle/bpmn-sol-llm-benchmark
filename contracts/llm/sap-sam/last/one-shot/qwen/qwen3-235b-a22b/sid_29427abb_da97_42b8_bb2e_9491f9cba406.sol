// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:57:34.254Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_29427abb_da97_42b8_bb2e_9491f9cba406 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask sid-0E2FFC62-7785-4536-B540-A2CEEEBCD7BF (taskID 1)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 2 == 2) {
        // ChoreographyTask sid-3FF02039-7912-495C-A954-1180AA9D542F (taskID 2)
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 4 == 4) {
        // ExclusiveGateway sid-D370EFBF-A319-44D2-9A22-9E8EEFE87248
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }

      if (_tokenState & 8 == 8) {
        // ChoreographyTask sid-219196E3-11E9-4006-A960-CBA666C8F5A7 (taskID 3)
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 16 == 16) {
        // ChoreographyTask sid-5E468D82-5C58-4448-B00F-975F17DB1452 (taskID 4)
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
        break;
      }

      if (_tokenState & 32 == 32) {
        // ChoreographyTask sid-C87CD8DA-DBB1-49FF-80DF-7C6E9D6FB5D8 (taskID 5)
        if (id == 5 && msg.sender == participants[9]) {
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          id = 0;
          continue;
        }
        break;
      }

      break;
    }
    tokenState = _tokenState;
  }
}
