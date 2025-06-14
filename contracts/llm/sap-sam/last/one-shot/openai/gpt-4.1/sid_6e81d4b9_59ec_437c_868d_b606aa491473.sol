// test openai/gpt-4.1 - one-shot at 2025-06-11T23:47:54.968Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_6e81d4b9_59ec_437c_868d_b606aa491473 {
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
      // sid-CC6038BD-B2B0-4B99-A027-0569C7FE8FD1: Solicitar Cotizacion (taskID 1, participant[0])
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for Solicitar Cotizacion here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-F59C3071-B78E-472A-BABB-980D836EEC9C: Comprar Productos (taskID 2, participant[2])
      if (_tokenState & 16 == 16) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for Comprar Productos here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-A0145737-B565-4383-B962-B7F8EB84BF13: Solicitar Abastecimiento (taskID 3, participant[4])
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for Solicitar Abastecimiento here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-8015FC3A-9884-4B3E-8F94-CDBE345BE0F4: Enviar Productos (taskID 4, participant[7])
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[7]) {
          // <--- custom code for Enviar Productos here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // end
        }
      }
      // sid-29C09A1F_7B84_413D_A005_DECD694FBB48: Acepta Cotizacion (exclusive gateway)
      if (_tokenState & 2 == 2) {
        // Evaluate conditions & 1 == 1 for sid-D372CDC9-358A-4370-BD2B-285DBB58AA00
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        } else {
          // Default flow sid-47983B66-EFBD-4E04-A8FA-DEF511ACC568: end
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}