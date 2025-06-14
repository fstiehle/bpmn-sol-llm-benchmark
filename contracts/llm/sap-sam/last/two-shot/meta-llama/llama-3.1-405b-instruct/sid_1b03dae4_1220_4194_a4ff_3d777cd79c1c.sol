// test meta-llama/llama-3.1-405b-instruct - two-shot at 2025-06-12T14:06:27.657Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_1_405b_instruct_two_shot_sid_1b03dae4_1220_4194_a4ff_3d777cd79c1c {
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
        // <--- sid-A7638941-30FE-45AC-A612-C227C72D5F76 M1 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2);
        _tokenState |= 6;
        continue; 
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-1071CFC9-F879-43FC-9065-70097B82BD19 M4 --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF M2 --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E M3 --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31 M5 --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 6 == 6) {
        // <---  auto transition  --->
        _tokenState &= ~uint(6);
        _tokenState |= 12;
        continue; 
      }
      if (_tokenState & 12 == 12) {
        // <---  auto transition  --->
        _tokenState &= ~uint(12);
        _tokenState |= 24;
        continue; 
      }
      if (_tokenState & 24 == 24) {
        // <---  auto transition  --->
        _tokenState &= ~uint(24);
        _tokenState |= 48;
        continue; 
      }
      if (_tokenState & 48 == 48) {
        // <---  auto transition  --->
        _tokenState &= ~uint(48);
        _tokenState |= 96;
        continue; 
      }
      if (_tokenState & 96 == 96) {
        // <---  auto transition  --->
        _tokenState &= ~uint(96);
        _tokenState |= 192;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
