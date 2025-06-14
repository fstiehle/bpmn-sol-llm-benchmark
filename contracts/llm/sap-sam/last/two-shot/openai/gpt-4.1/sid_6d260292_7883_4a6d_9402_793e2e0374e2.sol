// test openai/gpt-4.1 - two-shot at 2025-06-12T01:12:23.359Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6d260292_7883_4a6d_9402_793e2e0374e2 {
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
        // <--- sid-23AC13FC_2149_455A_B3BD_0AAE42B65E19 T1 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for T1 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-7F1513B0_C957_4B85_B9F9_B8E3A4247123 T2 --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for T2 here --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B1284174_413A_49C0_9CB0_12564D20E00F T3 --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for T3 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-39C5F9D9_295C_4FA1_91CB_3AB98F3EBD94 T4 --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for T4 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway sid-3545C612_6034_40CD_A74D_6904D0B9A32F
      if (_tokenState & 16 == 16) {
        bool moved = false;
        if (conditions & 1 == 1) {
          // <---  auto transition: sid-DF34930F_98FE_4848_A56D_4066D4D41E23 --->
          _tokenState &= ~uint(16);
          _tokenState |= 4;
          moved = true;
        }
        if (!moved) {
          // <--- default auto transition: sid-C46E4C3E_AB65_4FA4_B379_A2DF228CDEA7 --->
          _tokenState &= ~uint(16);
          _tokenState |= 1;
          moved = true;
        }
        if (moved) continue;
      }
      // After T3
      if (_tokenState & 8 == 8) {
        // <--- auto transition from T3 to T4 --->
        _tokenState &= ~uint(8);
        _tokenState |= 8;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
