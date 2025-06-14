// test openai/gpt-4.1 - one-shot at 2025-06-12T00:04:59.713Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_ada0803f_c971_4515_b8ef_7eaa0031c4f9 {
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
      // <--- sid-3B8BF843-1819-4EAD-AC9C-326E62F85FAB Antragsformular_wird_verschickt --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- Gateway sid-C685C610_E82E_4722_90F5_D0D9B4B176BD (exclusive) --->
      if (_tokenState & 2 == 2) {
        // conditional sequence flow: sid-49F9B909-8F7A-4C2F-B260-EDC143A68EB9
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
        // default sequence flow: sid-78084F03-D84F-4DB1-987C-87730E893CD3
        else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- sid-AAD29D1E-2C9A-48FC-9E90-DC8F8288DBFA Vertrag_wird_abgeschlossen --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // <--- sid-A7CAE9F1-CB6F-4829-9924-62E33BB5F436 Ueber_die_Ablehnung_wird_informiert --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- End event sid-39517791-CF4F-43C2-868A-BF0D313F1415: reached if tokenState & 16 or 32 --->
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
      }
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}