// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:45:27.593Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_6f106151_3fbf_49f3_b4f1_dbddb5207068 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-3C58D5A9-4A5D-4784-93F5-2EEAD658E4F7 Kunde stellt Antragsformular --->
        if (1 == taskID && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusive gateway sid-0C2844F3-8362-40EC-9404-AEE6DE89F808 --->
        if (conditions & 1 == 1) {
          // <--- conditional transition to sid-05B396A1-4772-44AB-B4E2-21384E0A5D44 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <--- default transition to sid-D836F160-E1FA-4B10-9270-C224CAAA4139 --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-05B396A1-4772-44AB-B4E2-21384E0A5D44 Informieren über zustimmen --->
        if (3 == taskID && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-D836F160-E1FA-4B10-9270-C224CAAA4139 Informieren über Ablehnung --->
        if (2 == taskID && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
