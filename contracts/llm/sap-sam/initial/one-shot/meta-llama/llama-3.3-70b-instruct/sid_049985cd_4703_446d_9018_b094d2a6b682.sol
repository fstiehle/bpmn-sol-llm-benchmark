// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-11T18:43:37.757Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  mapping (uint => uint) public taskIDMap;
  uint public currentTaskID;

  constructor(address[14] memory _participants) {
    participants = _participants;
    taskIDMap[1] = 1;
    taskIDMap[2] = 2;
    taskIDMap[3] = 4;
    taskIDMap[4] = 8;
    taskIDMap[5] = 16;
    taskIDMap[6] = 32;
    taskIDMap[7] = 64;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_227226E5 Make travel offer --->
        if (taskIDMap[id] == 1 && msg.sender == participants[1]) {
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
        // <--- ChoreographyTask_C49AC673 Reject offer --->
        if (taskIDMap[id] == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_C9EDEBCA Book Travel && confirm booking --->
        if (taskIDMap[id] == 3 && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_A70C991E Pay Travel --->
        if (taskIDMap[id] == 4 && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_46204067 Order ticket --->
        if (taskIDMap[id] == 5 && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_D456077E Confirm payment --->
        if (taskIDMap[id] == 6 && msg.sender == participants[11]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_85CDD208 Refuse payment --->
        if (taskIDMap[id] == 7 && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
