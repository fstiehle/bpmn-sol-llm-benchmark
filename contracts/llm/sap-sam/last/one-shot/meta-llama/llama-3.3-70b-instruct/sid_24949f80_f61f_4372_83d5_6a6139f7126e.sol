// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:11:10.252Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_24949f80_f61f_4372_83d5_6a6139f7126e {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  mapping (string => uint) public taskIDMap;
  constructor(address[14] memory _participants) {
    participants = _participants;
    taskIDMap["sid-2A8C519B-FA14-48DA-9551-53685209B7F3"] = 1;
    taskIDMap["sid-17E8C140-858E-4263-8049-98F7DA801390"] = 2;
    taskIDMap["sid-F80E4543-2ECB-464B-A37D-243945E38A27"] = 3;
    taskIDMap["sid-CCF831C8-84D6-4DB1-9F15-73E236241023"] = 4;
    taskIDMap["sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54"] = 5;
    taskIDMap["sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA"] = 6;
    taskIDMap["sid-321D60EE-2226-4B45-91C2-440C52F3C3BA"] = 7;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    uint _taskID = taskID;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-2A8C519B-FA14-48DA-9551-53685209B7F3 Anfrage stellen --->
        if (taskIDMap["sid-2A8C519B-FA14-48DA-9551-53685209B7F3"] == _taskID && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        _taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-17E8C140-858E-4263-8049-98F7DA801390 Angebot vorlegen --->
        if (taskIDMap["sid-17E8C140-858E-4263-8049-98F7DA801390"] == _taskID && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        _taskID = 0;
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
        // <--- ChoreographyTask sid-F80E4543-2ECB-464B-A37D-243945E38A27 Angebot ablehnen --->
        if (taskIDMap["sid-F80E4543-2ECB-464B-A37D-243945E38A27"] == _taskID && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-CCF831C8-84D6-4DB1-9F15-73E236241023 Angebot zusagen --->
        if (taskIDMap["sid-CCF831C8-84D6-4DB1-9F15-73E236241023"] == _taskID && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        _taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54 Verfügbarkeit prüfen --->
        if (taskIDMap["sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54"] == _taskID && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        _taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA Kaffeebohnen bestellen --->
        if (taskIDMap["sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA"] == _taskID && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        _taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask sid-321D60EE-2226-4B45-91C2-440C52F3C3BA Kaffeebohnen liefern --->
        if (taskIDMap["sid-321D60EE-2226-4B45-91C2-440C52F3C3BA"] == _taskID && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
