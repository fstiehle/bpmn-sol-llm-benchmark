// test openai/gpt-4.1 - one-shot at 2025-06-11T23:46:31.749Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_68c08511_18b3_4ed8_8fb3_627b38a129d8 {
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
        // <--- sid_64207994_D12D_429F_B981_FC3AF1F538AD Solicitar cotizacion --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Exclusive Gateway sid_66843A52_3084_4206_A53A_6E901F41424D --->
        // First, conditional outgoing
        if (conditions & 1 == 1) {
          // <--- auto transition: conditions & 1 == 1 to sid_158216D4_816D_4A7A_BCA1_EB11DD8FF8B1 (End) --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break;
        }
        // Default outgoing
        else {
          // <--- default: to sid_3F4E15A6_D506_4F9E_B3AB_EBFC8FC37032 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_3F4E15A6_D506_4F9E_B3AB_EBFC8FC37032 Comprar productos --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_CEDCB979_3CDF_4A45_8F86_DE3EF441FD5A Solicitar abastecimiento --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_393B71C1_5AD9_41AD_B3BA_D9BF2B1B7ECD Enviar productos --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}