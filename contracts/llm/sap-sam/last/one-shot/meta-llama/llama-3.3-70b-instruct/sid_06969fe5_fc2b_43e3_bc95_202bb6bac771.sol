// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T08:56:36.697Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  mapping (string => uint) taskIDMap;
  constructor(address[8] memory _participants) {
    participants = _participants;
    taskIDMap["sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93"] = 1;
    taskIDMap["sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F"] = 2;
    taskIDMap["sid-E53918A0-21BF-446B-B821-F5F45B4E3861"] = 3;
    taskIDMap["sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E"] = 4;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93 Sharing files --->
        if (taskIDMap["sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93"] == taskID && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F Rating&#10;information&#10; --->
        if (taskIDMap["sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F"] == taskID && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-E53918A0-21BF-446B-B821-F5F45B4E3861 Enriching information --->
        if (taskIDMap["sid-E53918A0-21BF-446B-B821-F5F45B4E3861"] == taskID && msg.sender == participants[4]) {
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
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        // <---  auto transition  --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E Retrieving information --->
        if (taskIDMap["sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E"] == taskID && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
