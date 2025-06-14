// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:43:13.029Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
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
        // <--- sid-3545C612-6034-40CD-A74D-6904D0B9A32F --->
        _tokenState &= ~uint(1);
        if (conditions & 1 == 1) {
          _tokenState |= 8;
        } else {
          _tokenState |= 2;
        }
        continue; 
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-23AC13FC-2149-455A-B3BD-0AAE42B65E19 T1 --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-7F1513B0-C957-4B85-B9F9-B8E3A4247123 T2 --->
        if (2 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-B1284174-413A-49C0-9CB0-12564D20E00F T3 --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-39C5F9D9-295C-4FA1-91CB-3AB98F3EBD94 T4 --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
