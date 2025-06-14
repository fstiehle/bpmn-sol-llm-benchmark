// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:46:51.076Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_7b20b02d_760a_4149_9bb6_1c8f5e79ac3b {
  uint public tokenState = 1;
  address[13] public participants;
  uint public conditions;
  
  constructor(address[13] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // Task 1: Solicitar pizza (Call Center - Website)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 6; // Activate both outgoing paths (bit 2 for Task 2, bit 4 for Task 3)
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Task 2: Informar de pedido
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8; // Activate join gateway
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Task 3: Coordinar el despacho
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8; // Activate join gateway
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // Join gateway (after Tasks 2 and 3)
        if ((_tokenState & 8) == 8 && (_tokenState & 12) == 12) {
          // Both incoming paths are active (bit 2 and bit 4)
          _tokenState &= ~uint(8);
          _tokenState |= 16; // Activate Task 4
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // Task 4: Buscar Producto terminado
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32; // Activate Task 5
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // Task 5: Despachar y cobrar pedido
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64; // Activate Task 6
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // Task 6: Informar correcta entrega
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 0; // End process
          id = 0;
          continue;
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
