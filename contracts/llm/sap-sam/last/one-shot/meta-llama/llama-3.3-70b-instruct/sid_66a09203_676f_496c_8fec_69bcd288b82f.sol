// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:39:56.529Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
  uint public tokenState = 1;
  address[15] public participants;
  uint public conditions;
  mapping(uint => uint) public taskMap;
  constructor(address[15] memory _participants) {
    participants = _participants;
    taskMap[1] = 1;
    taskMap[2] = 2;
    taskMap[3] = 4;
    taskMap[4] = 8;
    taskMap[5] = 16;
    taskMap[6] = 32;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid-56125FD7-FBEE-47E9-B12C-9F21ECF50FBE teilt Wünsche/Rahmenbedingung mit --->
        if (taskID == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid-F6CE5331-CAB4-4FAC-BDD7-3B99BC13EECE präsentiert mögliches Objekt --->
        if (taskID == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        taskID = 0;
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
        // <--- ChoreographyTask_sid-56CC82ED-03D3-4C04-8596-36F6EC5AF83A entscheidet sich für Objekt --->
        if (taskID == 3 && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_sid-627ACE73-E5A5-4C21-A82F-E4F6B855E698 Finanzierung klären --->
        if (taskID == 4 && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_sid-898706F7-D8B6-4499-9CC2-35153078234D bereitet Vertrag vor --->
        if (taskID == 5 && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_sid-218F35A0-BB4F-434A-A456-79ED84327F62 Vertrag unterzeichnen --->
        if (taskID == 6 && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 64;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
