// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T13:37:21.613Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_8004bd7c_dedf_4795_9980_368ee2f0a007 {
  uint public tokenState = 1; // Start event active
  address[4] public participants;
  
  // Bit positions for tokenState
  uint constant START_EVENT = 1;       // 1 << 0
  uint constant NOTIFICAR_ENVIO = 2;   // 1 << 1
  uint constant RECEPCIONAR_ENVIO = 4; // 1 << 2
  uint constant END_EVENT = 8;         // 1 << 3
  
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // Start event -> Notificar Envío
      if (_tokenState & START_EVENT == START_EVENT) {
        _tokenState &= ~START_EVENT;
        _tokenState |= NOTIFICAR_ENVIO;
        continue;
      }
      
      // Notificar Envío task
      if (_tokenState & NOTIFICAR_ENVIO == NOTIFICAR_ENVIO) {
        if (id == 1 && msg.sender == participants[0]) {
          // Execute task
          _tokenState &= ~NOTIFICAR_ENVIO;
          _tokenState |= RECEPCIONAR_ENVIO;
          id = 0;
          continue;
        }
      }
      
      // Recepcionar Envío task
      if (_tokenState & RECEPCIONAR_ENVIO == RECEPCIONAR_ENVIO) {
        if (id == 2 && msg.sender == participants[2]) {
          // Execute task
          _tokenState &= ~RECEPCIONAR_ENVIO;
          _tokenState |= END_EVENT;
          id = 0;
          continue;
        }
      }
      
      // End event
      if (_tokenState & END_EVENT == END_EVENT) {
        _tokenState = 0;
        break;
      }
      
      // If no task was executed, break the loop
      break;
    }
    
    tokenState = _tokenState;
  }
}
