// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:48:46.318Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_6e81d4b9_59ec_437c_868d_b606aa491473 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-CC6038BD-B2B0-4B99-A027-0569C7FE8FD1 Solicitar Cotización --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Handle exclusive gateway
        _tokenState &= ~uint(2);
        
        if (conditions & 1 == 1) {
          // Condition satisfied
          _tokenState |= 4;
        } else {
          // Follow default flow
          _tokenState |= 32;
        }
        
        continue;
      }
      
      if (_tokenState & 4 == 4) {
        // <--- sid-F59C3071-B78E-472A-BABB-980D836EEC9C Comprar Productos --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid-A0145737-B565-4383-B962-B7F8EB84BF13 Solicitar Abastecimiento --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- sid-8015FC3A-9884-4B3E-8F94-CDBE345BE0F4 Enviar Productos --->
        if (4 == id && msg.sender == participants[7]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 32 == 32) {
        // End event
        _tokenState = 0;
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
