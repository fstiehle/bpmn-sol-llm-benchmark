// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:06:55.519Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_0de8854f_07eb_4d06_8e49_148a373df43a {
  uint public tokenState = 1;
  address[2] public participants;
  uint public conditions;
  
  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    
    while(_tokenState != 0) {
      // StartEvent -> ChoreographyTask
      if (_tokenState & 1 == 1) {
        // Check if this is the choreography task execution
        // and if the sender is the photographer (participant 0)
        if (id == 1 && msg.sender == participants[0]) {
          // Execute the task "Entrega reportaje propio"
          _tokenState &= ~uint(1); // Clear start event bit
          _tokenState |= 2; // Set bit for task completion
          id = 0; // Reset task ID to prevent infinite loops
          continue;
        }
      }
      
      // ChoreographyTask -> EndEvent
      if (_tokenState & 2 == 2) {
        // Process ends, set tokenState to 0
        _tokenState = 0;
        break;
      }
      
      // If we get here, we've processed all available tasks
      break;
    }
    
    tokenState = _tokenState;
  }
}
