// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:38:13.722Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_2151ec47_115d_430f_919f_546f5784f826 {
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
        // <--- ChoreographyTask_EC58EE38 Klijent ima problem --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_CE66FED6 Dobijanje opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_1E0251F9 Saopstavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_13670263 Pitanje podrske I nivoa --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_D4B484C1 Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_6D099124 Pitanje za II nivo --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_40F90B68  --->
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <---  end event  --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}