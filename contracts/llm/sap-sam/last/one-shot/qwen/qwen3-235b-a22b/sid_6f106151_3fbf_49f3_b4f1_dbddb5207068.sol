// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:15:41.627Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_6f106151_3fbf_49f3_b4f1_dbddb5207068 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_3C58D5A9-4A5D-4784-93F5-2EEAD658E4F7 Kunde stellt Antragsformular --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
        // <---  auto transition default --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue; 
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_D836F160-E1FA-4B10-9270-C224CAAA4139 Informieren über Ablehnung --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        _tokenState = 0;
        break; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_05B396A1-4772-44AB-B4E2-21384E0A5D44 Informieren über zustimmen --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState = 0;
        break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
