// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T11:51:22.797Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- oryx_17BDCD00-2EF4-4300-9B41-89E99AB80C1E Bewerbung abschicken --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- oryx_D2B4F66F-E45A-4EE5-BA1E-19823BBCB8C4 fehlende Unterlagen anfordern --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- oryx_AF21D2E5-26A2-4BDA-A13A-3505624B4560 Zusage versenden --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- oryx_27A367A7-12ED-4EC6-BEDA-3DFD1B6BBA81 Absage versenden --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- oryx_30B3598E-DF0D-402D-BD8A-BC8236E8E422 Immatrikulationsunterlagen versenden --->
        if (5 == taskID && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- oryx_CAAC4136-6550-45D4-B9FF-DA7123ABC114 fehlende Unterlagen nachschicken --->
        if (6 == taskID && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 16;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
