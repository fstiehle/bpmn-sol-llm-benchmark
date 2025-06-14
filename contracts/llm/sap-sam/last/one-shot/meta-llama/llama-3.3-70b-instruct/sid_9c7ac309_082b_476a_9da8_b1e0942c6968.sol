// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:04:25.398Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_9c7ac309_082b_476a_9da8_b1e0942c6968 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask: Antragsformular übermitteln --->
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask: Formular weiterleiten --->
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask: Treffen Entscheidung --->
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <---  auto transition to: Vertrag wird abgeschlossen  --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        } else {
          // <---  auto transition to: informiert über Ablehnung  --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask: Vertrag wird abgeschlossen --->
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask: informiert über Ablehnung --->
        if (id == 5 && msg.sender == participants[8]) {
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
