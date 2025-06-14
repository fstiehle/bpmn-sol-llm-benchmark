// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:12:08.273Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_ada0803f_c971_4515_b8ef_7eaa0031c4f9 {
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
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid-3B8BF843-1819-4EAD-AC9C-326E62F85FAB Antragsformular wird verschickt --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Exclusive Gateway sid-C685C610-E82E-4722-90F5-D0D9B4B176BD --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // <--- default transition --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_sid-AAD29D1E-2C9A-48FC-9E90-DC8F8288DBFA Vertrag wird abgeschlossen --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_sid-A7CAE9F1-CB6F-4829-9924-62E33BB5F436 Über die Ablehnung wird informiert --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- End Event sid-39517791-CF4F-43C2-868A-BF0D313F1415 --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
