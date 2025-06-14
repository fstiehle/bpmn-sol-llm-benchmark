// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:34:49.489Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  mapping (uint => uint) public taskIDToIndex;
  mapping (uint => uint) public participantIndexToID;

  constructor(address[6] memory _participants) {
    participants = _participants;
    taskIDToIndex[1] = 1;
    taskIDToIndex[2] = 2;
    taskIDToIndex[3] = 4;
    participantIndexToID[0] = 0;
    participantIndexToID[1] = 1;
    participantIndexToID[2] = 2;
    participantIndexToID[3] = 3;
    participantIndexToID[4] = 4;
    participantIndexToID[5] = 5;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    uint taskIndex = taskIDToIndex[taskID];
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_998BF84A-5A1B-4FC1-8D9D-35B23405CB1E Issue Report to Client --->
        if (taskID == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_840A8FCC-2211-467B-B180-1E77580E3EDF Issue report to registry --->
        if (taskID == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_78E1385A-0AF4-4CDC-967C-072B15693036 Issue report to accounts receivable --->
        if (taskID == 3 && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
