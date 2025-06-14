// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T13:04:01.311Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_79c8949d_d7a1_4b48_a6a2_9dad70fa8c41 {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B553A377-63E5-45B1-A969-E2B87D0C7386 Notificar Envío --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-A032EAFA-35FD-4B68-BE54-7CE90DC1CCAF Recepcionar Envío --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
