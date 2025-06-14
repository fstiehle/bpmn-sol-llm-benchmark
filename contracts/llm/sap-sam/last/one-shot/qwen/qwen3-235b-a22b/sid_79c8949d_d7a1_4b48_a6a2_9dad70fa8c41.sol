// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:38:37.545Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_79c8949d_d7a1_4b48_a6a2_9dad70fa8c41 {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // Task: Notificar Envio
        if (taskID == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);  // Clear start state
          _tokenState |= 2;         // Set state for task 2
          taskID = 0;               // Clear task ID
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Task: Recepcionar Envio
        if (taskID == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);  // Clear current state
          _tokenState |= 4;         // Set end state
          taskID = 0;               // Clear task ID
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // End event: terminate process
        _tokenState = 0;
        break;
      }
      
      break; // No more active states
    }
    
    tokenState = _tokenState;
  }
}
