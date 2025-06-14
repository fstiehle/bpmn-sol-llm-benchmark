// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:20:52.641Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_3671b301_367a_4a67_a107_c711715b848e {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;

  constructor(address[6] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid-70719FD1-1348-40DB-A065-457E488DDAC4 Pizza bestellen --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid-87C5FDC5-7D42-4F15-B0D5-983F71ED806F Pizza liefern --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_sid-99ABCD46-49C9-4AD1-94B2-788BA9ACA06A Geld kassieren --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
