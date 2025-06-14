// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:49:07.388Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_a056cead_b17c_4c35_a48f_be2eaf273826 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- StartEvent --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_1 Anfrage stellen --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ExclusiveGateway converging --->
        _tokenState &= ~uint(512);
        _tokenState |= 4;
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_2 Angebot vorlegen --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ExclusiveGateway diverging --->
        bool conditionMet = false;
        if (conditions & 1 == 1) {
          _tokenState |= 8;
          conditionMet = true;
        }
        if (conditions & 2 == 2) {
          _tokenState |= 16;
          conditionMet = true;
        }
        if (conditionMet) {
          _tokenState &= ~uint(1024);
        } else {
          _tokenState &= ~uint(1024);
          _tokenState |= 32;
        }
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_3 Absage erteilen --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_4 Änderungswünsche mitteilen --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_5 Auftrag erteilen --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_6 Verfügbarkeit anfragen --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_7 Grafik erstellen lassen --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_8 Freigabe holen --->
        if (8 == id && msg.sender == participants[14]) {
        _tokenState &= ~uint(256);
        _tokenState |= 2048;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- EndEvent --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
