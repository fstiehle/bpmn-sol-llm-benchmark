// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:57:36.899Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_5015db90_2cd3_4900_9985_94fd0de5740c {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-6777CC5F-95E8-47D0-81E1-386859C92C78 Send court calender --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-EB726CD1-8C71-4F82-AACB-D6BDAD7B7683 Request sitting list (for each judge) --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-DEB38800-059C-493E-BD0C-64CF99763480 Resolve judge availability --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-8E7F0F5A-2398-463E-BB42-8609C0CAD70C Send yearly shedule --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
