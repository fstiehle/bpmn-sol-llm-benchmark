// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:30:29.721Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A Anrufen --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 Problem loesen --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- sid-5ADAF5B5-2E03-4531-B02C-72D10257157D Notiz --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
      }
      
      if (_tokenState & 4 == 4) {
        // <---  default transition  --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        continue;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}