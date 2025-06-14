// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:49:18.605Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_7b255b54_365e_47e7_b1cd_4d691b88ac62 {
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
        // ChoreographyTask_1: Soitto ravintolaan
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ExclusiveGateway: Onko poytia vapaana?
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 256;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ChoreographyTask_2: Merkitse varaus
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask_3: Asiakas saapuu ravintolaan
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask_4: Tilaus
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask_5: Ruokailu
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask_6: Lasku
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask_7: Asiakas on maksanut laskun
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // EndEvent: Process termination
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
