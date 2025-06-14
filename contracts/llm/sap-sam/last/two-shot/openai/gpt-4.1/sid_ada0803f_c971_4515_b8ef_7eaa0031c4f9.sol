// test openai/gpt-4.1 - two-shot at 2025-06-12T01:59:26.389Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_ada0803f_c971_4515_b8ef_7eaa0031c4f9 {
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
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-3B8BF843-1819-4EAD-AC9C-326E62F85FAB Antragsformular wird verschickt --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-AAD29D1E-2C9A-48FC-9E90-DC8F8288DBFA Vertrag wird abgeschlossen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-A7CAE9F1-CB6F-4829-9924-62E33BB5F436 Ueber die Ablehnung wird informiert --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-C685C610-E82E-4722-90F5-D0D9B4B176BD --->
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // sid-49F9B909-8F7A-4C2F-B260-EDC143A68EB9  (Ablehnung)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
        }
        if (!transitioned) {
          // default sid-78084F03-D84F-4DB1-987C-87730E893CD3
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
