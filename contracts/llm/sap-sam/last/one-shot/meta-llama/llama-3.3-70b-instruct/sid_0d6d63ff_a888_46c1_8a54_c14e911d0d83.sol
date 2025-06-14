// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T08:58:06.614Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  mapping(string => uint) public taskIDMap;
  constructor(address[6] memory _participants) {
    participants = _participants;
    taskIDMap["sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A"] = 1;
    taskIDMap["sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7"] = 2;
    taskIDMap["sid-5ADAF5B5-2E03-4531-B02C-72D10257157D"] = 3;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A Anrufen --->
        if (taskID == taskIDMap["sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A"] && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusive gateway sid-B5FF172E-CBDE-4E4A-9C42-80CC0FA905BA lösbar? --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
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
        // <--- ChoreographyTask sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 Problem lösen --->
        if (taskID == taskIDMap["sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7"] && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-5ADAF5B5-2E03-4531-B02C-72D10257157D Notiz --->
        if (taskID == taskIDMap["sid-5ADAF5B5-2E03-4531-B02C-72D10257157D"] && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 32 == 32) {
        // <---  auto transition  --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
