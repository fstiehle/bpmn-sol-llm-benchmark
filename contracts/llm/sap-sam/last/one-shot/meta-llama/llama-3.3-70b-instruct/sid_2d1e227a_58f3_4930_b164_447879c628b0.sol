// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:14:54.248Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_2d1e227a_58f3_4930_b164_447879c628b0 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    uint id = taskID;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_5343FBBE-1949-4189-834C-AF7944006D10 Kundenanruf --->
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusive gateway sid-6B3AA898-9DAB-467A-BC1C-05B31EAB24B8 --->
        if (conditions & 1 == 1) {
          // <--- auto transition to sid-0DA543ED-E104-44FD-828B-4D8D3F76BA93 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <--- auto transition to sid-D1D080CD-56C8-404E-BC5B-10F44648B5C8 --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_0DA543ED-E104-44FD-828B-4D8D3F76BA93 Lösung erklären --->
        if (id == 2 && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_D1D080CD-56C8-404E-BC5B-10F44648B5C8 Problem weitergeben --->
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_6E64DF59-42FE-4D07-B24B-39C00BAA57CF Service-Techniker anrufen --->
        if (id == 4 && msg.sender == participants[7]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_2ABDB270-FA4E-4B15-A8A2-DAC816309C9C Zu Kunde fahren --->
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_7A508341-210E-493A-8EC3-B0E2D57D81F2 Problem lösen --->
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_F69420E0-7365-4D69-9A71-ADB0BF7BC50D Formular unterschreiben lassen --->
        if (id == 7 && msg.sender == participants[12]) {
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
