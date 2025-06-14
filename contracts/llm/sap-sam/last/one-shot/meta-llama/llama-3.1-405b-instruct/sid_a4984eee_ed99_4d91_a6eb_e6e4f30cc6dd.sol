// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:47:15.524Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_a4984eee_ed99_4d91_a6eb_e6e4f30cc6dd {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;

  constructor(address[6] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_657E8C44-DCCB-449F-8033-52706A33F26A Anfrage bearbeiten --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_40E67A20-F07D-4E8C-AE12-1F4FB27B91EF Angebot erstellen --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_BBCE9BD4-F5A9-4F01-8166-1DCD3EBE69D4 Buchung durchführen --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
