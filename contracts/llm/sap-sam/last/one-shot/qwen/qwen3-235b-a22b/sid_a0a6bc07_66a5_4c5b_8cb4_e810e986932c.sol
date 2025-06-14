// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:51:25.327Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_a0a6bc07_66a5_4c5b_8cb4_e810e986932c {
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
    while (_tokenState != 0) {
      uint temp = _tokenState;
      
      if (_tokenState & 1 == 1) {
        // ChoreographyTask Problem schildern (taskID 1)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask Problem besprechen (taskID 2)
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ExclusiveGateway Problem gelöst
        _tokenState &= ~uint(4);
        if (conditions & 1 == 1) {
          _tokenState |= 16;
        } else {
          _tokenState |= 8;
        }
        continue;
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask Problem gelöst (taskID 3)
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          break;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask Notiz senden (taskID 4)
        if (id == 4 && msg.sender == participants[7]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask Problem schildern (taskID 5)
        if (id == 5 && msg.sender == participants[9]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask Problem vor Ort lösen (taskID 6)
        if (id == 6 && msg.sender == participants[11]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask Auftragsbericht unterschreiben lassen (taskID 7)
        if (id == 7 && msg.sender == participants[13]) {
          _tokenState &= ~uint(128);
          break;
        }
      }
      
      if (_tokenState == temp) {
        break;
      }
    }
    tokenState = _tokenState;
  }
}
