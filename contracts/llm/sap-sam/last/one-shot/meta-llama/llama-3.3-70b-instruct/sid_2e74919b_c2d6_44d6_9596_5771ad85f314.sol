// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:15:24.174Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_2e74919b_c2d6_44d6_9596_5771ad85f314 {
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
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_181F9D56_226F_4071_A541_5B34611F8C21 Auf Reservierung prüfen --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // Exclusive Gateway: sid_A25E4563_B053_45A5_987B_A0B3D3B3CCCF
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_E4C67638_32F7_4EF7_B567_F5CDC766B074 Freies Zimmer verfügbar --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // Exclusive Gateway: sid_22F83BA6_496B_4257_ABA3_36229D63918F
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue; 
        } else {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_95D5D543_0404_4C29_98F8_FD3EA102C79F In anderes Hotel verwiesen --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_3791BA58_F1EE_48E9_A212_E6FBC50B3AAC Schlüssel aushändigen --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 256;
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
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 256 == 256) {
        // <---  auto transition  --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
