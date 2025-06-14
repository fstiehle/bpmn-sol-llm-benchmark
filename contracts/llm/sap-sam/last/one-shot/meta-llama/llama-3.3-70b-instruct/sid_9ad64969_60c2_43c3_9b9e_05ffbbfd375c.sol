// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:02:55.299Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_9ad64969_60c2_43c3_9b9e_05ffbbfd375c {
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
      if (_tokenState & 1 == 1) {
        // <--- StartEvent sid-6B808B84-027F-43DB-A309-F6AE98A50176 --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-C3E521CC-C26D-4D59-B7EF-2619EC56954B Paga Fotógrafo --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- EndEvent sid-A9CA1A3F-ABFE-4B8D-9031-A7BA7410ACBA --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
