// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T06:56:38.194Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          continue; 
        }
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(1);
          _tokenState |= 8;
          continue; 
        }
        // <---  auto transition  --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue; 
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-87BBD4F0-2401-4A17-803C-8B904256971A A --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6 B --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B A --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E B --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 160;
        continue; 
      }
      if (_tokenState & 192 == 192) {
        // <---  auto transition  --->
        _tokenState &= ~uint(192);
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
