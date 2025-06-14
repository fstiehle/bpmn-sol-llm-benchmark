// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:21:06.134Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_1b03dae4_1220_4194_a4ff_3d777cd79c1c {
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
      if (_tokenState & 4 == 4) {
        // <--- sid-1071CFC9-F879-43FC-9065-70097B82BD19 M4 --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF M2 --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
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
      if (_tokenState & 128 == 128) {
        // <--- sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31 M5 --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-00E07E95-7526-4B8C-BACC-C00BBAB4E570 Parallel Diverging Gateway --->
        // Activate all outgoing paths
        _tokenState &= ~uint(2);
        _tokenState |= 12; // Activate tasks M4 (4) and M2 (8)
        continue;
      }
      if (_tokenState & 80 == 80) {
        // <--- sid-95EDDF96-752C-4BC2-AB18-629BE80CE91F Parallel Converging Gateway --->
        // Check if both incoming paths (M4 and M3) are completed
        _tokenState &= ~uint(80);
        _tokenState |= 128; // Activate task M5
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}