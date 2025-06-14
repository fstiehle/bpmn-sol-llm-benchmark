// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:35:06.550Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_247ea4fc_3e88_490b_b08a_7ab4e87b915b {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask: "enviar orden de compra" (task ID 1)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Handle exclusive gateway with condition "conditions & 1 == 1"
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }
      
      if (_tokenState & 4 == 4) {
        // ChoreographyTask: "Confirmación de orden" (task ID 2)
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask: "comprar materia prima" (task ID 3)
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // Parallel gateway split
        _tokenState &= ~uint(16);
        _tokenState |= 32 | 64;
        continue;
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask: "Envío del producto" (task ID 4)
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask: "Factura al cliente" (task ID 5)
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // Parallel gateway join
        _tokenState &= ~uint(128);
        break;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
