// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:35:20.541Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_1b03dae4_1220_4194_a4ff_3d777cd79c1c {
  uint public tokenState = 1;
  address[10] public participants;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      uint prevTokenState = _tokenState;
      
      // <--- sid-A7638941-30FE-45AC-A612-C227C72D5F76 M1 --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      
      // <--- sid-00E07E95-7526-4B8C-BACC-C00BBAB4E570 Parallel Split --->
      if (_tokenState & 2 == 2) {
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue; 
      }
      
      // <--- sid-1071CFC9-F879-43FC-9065-70097B82BD19 M4 --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      
      // <--- sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF M2 --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      
      // <--- sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E M3 --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      
      // <--- sid-95EDDF96-752C-4BC2-AB18-629BE80CE91F Parallel Join --->
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue; 
      }
      
      // <--- sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31 M5 --->
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(64);
        break; // is end
        }
      }
      
      if (prevTokenState == _tokenState) {
        break;
      }
    }
    tokenState = _tokenState;
  }
}
