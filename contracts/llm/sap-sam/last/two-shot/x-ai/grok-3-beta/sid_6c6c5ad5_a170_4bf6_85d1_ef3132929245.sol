// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:38:22.255Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_6c6c5ad5_a170_4bf6_85d1_ef3132929245 {
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
        // <--- sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1 Saopstava problem --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612 Trazi detaljniji opis --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-E38463B9-D82B-4189-851B-1B9A3309F090 Saopstava resenje --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-1BDA005F-A28B-4B00-A678-19F7E437856F Trazi pomoc --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-8804897F-A178-4B50-B16F-90AD4B890E31 Saopstava resenje problema --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-3DC05355-F0EE-4522-9151-7257C96DC99E Trazi pomoc --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340 Saopstava problem --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-5CBD0AD9-DB13-466E-A702-7F9AAF3355E4 Exclusive Gateway --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        } else {
          // Default path
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-800358D3-F1F2-4A3A-A1FC-45ECA8CD8EB5 Exclusive Gateway --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        } else {
          // Default path
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}