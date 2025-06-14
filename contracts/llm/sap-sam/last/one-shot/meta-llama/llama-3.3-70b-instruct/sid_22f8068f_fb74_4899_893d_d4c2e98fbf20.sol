// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:07:41.472Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_22f8068f_fb74_4899_893d_d4c2e98fbf20 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-E5490C4B-C24A-431D-B77A-49760BB4CCB8 Generate Purchase Request --->
        if (taskID == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-AB28E743-A241-4766-9C91-DAFABA0E39D1 Generate Purchase Order --->
        if (taskID == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-A91EF0BA-F5C4-42CE-8076-0197BA6E0E9D Generate Invoice --->
        if (taskID == 3 && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-2150BBD8-18C8-4D8C-A164-2D07C84B7011 Process Payment --->
        if (taskID == 4 && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
