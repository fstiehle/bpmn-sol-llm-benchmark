// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:49:15.138Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_22d9bf83_763f_4e16_be84_3b1c3341f5eb {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask_65C8117F-28E4-4E60-A856-DC3781741442: sending problem
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // ChoreographyTask_0E371D22-F671-46A9-B002-3BBC45D70D56: getting detailed problem description
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // ExclusiveGateway_1DFCC98D-6E8D-44E7-B4FD-F9BCB6E13B2B: check if operator knows how to solve
        if (conditions & 1 == 1) {
          // Condition satisfied, activate sending solution
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        } else {
          // Default path, operator seeks help
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }

      if (_tokenState & 8 == 8) {
        // ChoreographyTask_80DD8523-EED7-4D0E-AE73-B6DE5FEDAC6C: sending solution
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0; // Process ends
          break;
        }
      }

      if (_tokenState & 16 == 16) {
        // ChoreographyTask_31A1387F-6D25-4A18-B727-88BB8CA8A1B7: seeking solution
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // ExclusiveGateway_63F0C034-39FC-46B6-AABC-8BE558DB0EC9: check if first-level support knows how to solve
        if (conditions & 2 == 2) {
          // Condition satisfied, activate sending solution
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        } else {
          // Default path, first-level support seeks help
          _tokenState &= ~uint(32);
          _tokenState |= 128;
        }
        continue;
      }

      if (_tokenState & 64 == 64) {
        // ChoreographyTask_EA9BA447-3DAD-4A18-9CBF-2A3D55C0C7F3: sending solution
        if (id == 5 && msg.sender == participants[9]) {
          _tokenState &= ~uint(64);
          _tokenState |= 8; // Back to solution path
          id = 0;
          continue;
        }
      }

      if (_tokenState & 128 == 128) {
        // ChoreographyTask_081555FE-78D3-4DC0-B5BE-333FDEDE2BDC: seeking solution
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 256 == 256) {
        // ChoreographyTask_081555FE-78D3-4DC0-B5BE-333FDEDE2BDC: sending solution back
        if (id == 5 && msg.sender == participants[11]) {
          _tokenState &= ~uint(256);
          _tokenState |= 64; // Back to solution path
          id = 0;
          continue;
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}
