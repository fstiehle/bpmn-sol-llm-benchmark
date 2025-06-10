//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_c5244920_c805_44ce_9082_a6db8b78d623 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;

  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-C47FA0CA-10B8-4CB2-A749-1C7D9BC91F21 Hacer Consulta --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-502E6BD6-49C0-44B0-BDC6-B7C74A8F51FC Hacer Oferta --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-04BF4FE3-1AB2-4009-9692-3AFA7ACFB0CA Solicitar Cambios --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
        // <--- sid-6DB351C5-0BD5-4ADE-867E-702EA62F30C7 Rechazar Oferta --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
        // <--- sid-4E8403A3-4EEC-4888-94DC-4AA827D510FF Aceptar Oferta --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-EF43FCD4-1DF7-4093-A9B7-5419C653BF7A Verificar Disponibilidad --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-B306BE9A-C017-44C4-A032-61CC2CE93418 Contratar Diseñador --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-C1F3770E-ED65-40B5-B7F7-138016DFA6B3 Aceptar Anuncio --->
        if (8 == id && msg.sender == participants[15]) {
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