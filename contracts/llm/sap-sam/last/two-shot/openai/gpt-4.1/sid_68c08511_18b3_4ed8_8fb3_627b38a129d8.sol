// test openai/gpt-4.1 - two-shot at 2025-06-12T01:11:16.212Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_68c08511_18b3_4ed8_8fb3_627b38a129d8 {
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
        // <--- sid-64207994-D12D-429F-B981-FC3AF1F538AD Solicitar cotizacion --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Exclusive Gateway sid-66843A52_3084_4206_A53A_6E901F41424D --->
        //   outgoing: Si (sid-D186571E-6703-41A2-A0AB-0BB6FC76E9AE) -> sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032
        //   outgoing: conditions & 1 == 1 (sid-FF8DAC4D-C32F-41CF-A9C9-FCC187FA5D59) -> sid-158216D4-816D-4A7A-BCA1-EB11DD8FF8B1
        bool matched = false;
        if (conditions & 1 == 1) {
          // <---  auto transition to end event  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          matched = true;
          break; // process ends
        }
        if (!matched) {
          // default flow "Si" to sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032 Comprar productos --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CEDCB979-3CDF-4A45-8F86-DE3EF441FD5A Solicitar abastecimiento --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-393B71C1-5AD9-41AD-B3BA-D9BF2B1B7ECD Enviar productos --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
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