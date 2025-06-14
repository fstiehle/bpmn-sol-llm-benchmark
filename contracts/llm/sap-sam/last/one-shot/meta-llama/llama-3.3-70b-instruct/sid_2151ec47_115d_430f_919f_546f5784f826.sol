// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:05:29.676Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_2151ec47_115d_430f_919f_546f5784f826 {
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
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 Klijent ima problem --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid-CE66FED6-A686-4096-B422-CD0BA169BE36 Dobijanje opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
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
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_sid-1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_sid-13670263-52E5-49D8-9F4B-0558669622F0 Pitanje podrske I nivoa --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        } else if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_sid-6D099124-B421-417F-862D-8C820BA41D08 Pitanje za II nivo --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4  --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
