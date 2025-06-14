// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:08:08.184Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  mapping(string => uint) public taskIDMap;
  constructor(address[8] memory _participants) {
    participants = _participants;
    taskIDMap["sid-BD7B4002-9065-4315-AA74-82D3A6E7F757"] = 1;
    taskIDMap["sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5"] = 2;
    taskIDMap["sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4"] = 3;
    taskIDMap["sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548"] = 4;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    uint taskIDInternal;
    if (taskID == 1) {
      taskIDInternal = 1;
    } else if (taskID == 2) {
      taskIDInternal = 2;
    } else if (taskID == 3) {
      taskIDInternal = 4;
    } else if (taskID == 4) {
      taskIDInternal = 8;
    }
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-BD7B4002-9065-4315-AA74-82D3A6E7F757 task1 --->
        if (taskIDInternal == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5 task2 --->
        if (taskIDInternal == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- parallel gateway --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4 task3 --->
        if (taskIDInternal == 4 && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548 task4 --->
        if (taskIDInternal == 8 && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- join --->
        if (_tokenState & 64 == 64) {
          _tokenState &= ~uint(32);
          _tokenState &= ~uint(64);
          _tokenState = 0;
          break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
