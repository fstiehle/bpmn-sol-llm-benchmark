// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T06:15:23.406Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_6786d958_8dc5_4a92_997d_dd34c15b6e3f {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-40B088FB-BEF2-4CD4-B269-B0902EB49BF6 Request for Tender --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-546BF032-593C-4B67-93B7-A531E433B0A0 Make offer --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
        // <--- sid-30065477-C3FC-44B6-9BAB-45FD254F6CF9 New request for tender --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-3FD7392B-985E-4CFD-8444-055573C3AD47 Announce the scores --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-663F88C0-8E57-4A4A-B75C-F55BFBFB1127 Purchase product part --->
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 2;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
