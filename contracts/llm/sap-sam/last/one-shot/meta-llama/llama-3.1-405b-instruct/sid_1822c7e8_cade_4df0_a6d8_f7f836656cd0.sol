// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:24:36.512Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_1822c7e8_cade_4df0_a6d8_f7f836656cd0 {
  uint public tokenState = 1;
  address[28] public participants;
  uint public conditions;

  constructor(address[28] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1 Send order M1 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_2 Place order M2 --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_3 Place order M8 --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_4 Request parts M3 --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <---  auto transition  --->
        _tokenState &= ~uint(32);
        _tokenState |= 128 | 256;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_5 Send results M4 --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_9 Request parts M9 --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_11 Request parts M11 --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_6 Request parts M5 --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_10 Send results M10 --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_12 Send results M12 --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_7 Send results M6 --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8192);
        _tokenState |= 65536;
        continue; 
      }
      if (_tokenState & 16384 == 16384) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16384);
        _tokenState |= 65536;
        continue; 
      }
      if (_tokenState & 32768 == 32768) {
        // <--- ChoreographyTask_8 Send F. Results M7 --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 131072;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- ChoreographyTask_13 Send F. Results M13 --->
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(65536);
        _tokenState |= 262144;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <---  auto transition  --->
        _tokenState &= ~uint(131072);
        _tokenState |= 262144;
        continue; 
      }
      if (_tokenState & 262144 == 262144) {
        // <--- ChoreographyTask_14 Reply M14 --->
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
