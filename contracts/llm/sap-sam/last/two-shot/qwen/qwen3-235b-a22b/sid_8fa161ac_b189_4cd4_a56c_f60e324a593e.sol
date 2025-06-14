// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T14:14:33.959Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_8fa161ac_b189_4cd4_a56c_f60e324a593e {
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
        // <--- ChoreographyTask sid-DC738A66-7525-4C02-99D0-E48FC804756A slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-34874B10-2120-4641-85D3-7DA5014FE9FD opisivanje problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-49E97E55-D6C3-4E09-879F-677795D88F23 slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-598E252E-B2A2-40AA-AB49-CD70F467EF44 slanje  resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-556F6605-D15D-4916-BBF5-006F8307FA38 slanje opisa problema --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-45AEC8AE-290B-4570-B253-51A903050093 slanje resenja i objasnjenja --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- auto transition [NE] --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue; 
        }
        // <--- auto transition [DA] --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        continue; 
      }
      if (_tokenState & 12 == 12) {
        if (conditions & 2 == 2) {
          // <--- auto transition [DA] --->
          _tokenState &= ~uint(12);
          _tokenState |= 64;
          continue; 
        }
        // <--- auto transition [default] --->
        _tokenState &= ~uint(12);
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        // <--- auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 18 == 18) {
        // <--- auto transition  --->
        _tokenState &= ~uint(18);
        _tokenState |= 8;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
