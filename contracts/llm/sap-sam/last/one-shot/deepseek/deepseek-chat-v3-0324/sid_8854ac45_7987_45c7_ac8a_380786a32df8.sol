// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:26:21.157Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_8854ac45_7987_45c7_ac8a_380786a32df8 {
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
        // <--- ChoreographyTask_1 findet gewuenschten Titel nicht, stellt Anfrage --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_2 ueberprueft Mediathek nach diesem Titel --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_3 macht Angebot --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_4 prueft Angebot --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_5 leitet Angebot weiter --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_6 leitet Angebot nicht weiter --->
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_7 Bezahlung der Lizenzgebuehr des Titels --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_8 fuegt den neuen Titel in Mediathek hinzu --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        } else {
          // <---  default transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
