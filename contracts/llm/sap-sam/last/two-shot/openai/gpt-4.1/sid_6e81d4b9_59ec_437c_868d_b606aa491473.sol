// test openai/gpt-4.1 - two-shot at 2025-06-12T01:12:55.336Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6e81d4b9_59ec_437c_868d_b606aa491473 {
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
    while (_tokenState != 0) {
      // sid-CC6038BD-B2B0-4B99-A027-0569C7FE8FD1 Solicitar Cotizacion
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-F59C3071-B78E-472A-BABB-980D836EEC9C Comprar Productos
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // sid-A0145737-B565-4383-B962-B7F8EB84BF13 Solicitar Abastecimiento
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-8015FC3A-9884-4B3E-8F94-CDBE345BE0F4 Enviar Productos
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[7]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      // Exclusive Gateway sid-29C09A1F_7B84_413D_A005_DECD694FBB48
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // condition: conditions & 1 == 1
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // default flow
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}