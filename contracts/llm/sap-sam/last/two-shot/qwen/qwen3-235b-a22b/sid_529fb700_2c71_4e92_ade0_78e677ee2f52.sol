// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T11:42:31.896Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_529fb700_2c71_4e92_ade0_78e677ee2f52 {
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
        // ChoreographyTask_1C226C51 Klijent ima problem
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // ChoreographyTask_B693B53E Dobijanje detaljnog opisa problema
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // ExclusiveGateway_1C2370B0 znam resenje?
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(128);
          _tokenState |= 1024;
          continue; 
        } else {
          _tokenState &= ~uint(128);
          _tokenState |= 4;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // ChoreographyTask_F7291B89 Trazenje pomoci
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // ExclusiveGateway_21B65A39 zna resenje?
        if ((conditions & 2) == 2) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue; 
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // ChoreographyTask_7413834A Trazenje pomoci
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // ChoreographyTask_9C89324C Resavanje problema
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(16);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // ExclusiveGateway_B5123D57 
        // auto transition
        _tokenState &= ~uint(512);
        _tokenState |= 32;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        // ChoreographyTask_46DD2450 Resavanje problema
        if (6 == id && msg.sender == participants[11]) {
        _tokenState &= ~uint(32);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // ExclusiveGateway_3B49A9B1 
        // auto transition
        _tokenState &= ~uint(1024);
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // ChoreographyTask_A23868C2 Resavanje problema
        if (7 == id && msg.sender == participants[13]) {
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
