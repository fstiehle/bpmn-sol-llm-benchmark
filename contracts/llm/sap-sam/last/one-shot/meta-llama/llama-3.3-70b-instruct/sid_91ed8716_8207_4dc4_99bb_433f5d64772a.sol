// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:58:54.558Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_91ed8716_8207_4dc4_99bb_433f5d64772a {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  mapping (string => uint) public taskIDMap;
  constructor(address[8] memory _participants) {
    participants = _participants;
    taskIDMap["sid-35A24E50-1F69-4524-A80D-935E58B57FD3"] = 1;
    taskIDMap["sid-E52B44B4-2691-4CED-BB06-162931FCA8E1"] = 2;
    taskIDMap["sid-535AEDAB-AD89-4EAD-8D6A-8FF0C132539D"] = 3;
    taskIDMap["sid-957E2833-CF7C-4D58-8DDE-36568CBD7A96"] = 4;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-35A24E50-1F69-4524-A80D-935E58B57FD3 Wohnungsart-Bedarfserhebung --->
        if (taskID == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-E52B44B4-2691-4CED-BB06-162931FCA8E1 Klärung der Rechtsform vom Objekt --->
        if (taskID == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-535AEDAB-AD89-4EAD-8D6A-8FF0C132539D Baufeldentwicklung --->
        if (taskID == 3 && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-957E2833-CF7C-4D58-8DDE-36568CBD7A96 Abstimmung (Bedarf) --->
        if (taskID == 4 && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
