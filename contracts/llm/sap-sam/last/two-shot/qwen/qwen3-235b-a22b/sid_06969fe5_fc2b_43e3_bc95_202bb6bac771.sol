// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T04:56:21.531Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
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
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93 Sharing files --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- Exclusive Gateway sid-34E7111D-6C2E-4DFC-B4B3-66C2681E12E4 --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else if (conditions & 2 == 2) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F Rating information --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid-E53918A0-21BF-446B-B821-F5F45B4E3861 Enriching information --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- Converging Gateway sid-D8020EDC-0BE5-4FE9-8289-5380EE6CEACE --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      
      if (_tokenState & 32 == 32) {
        // <--- sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E Retrieving information --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(32);
          _tokenState = 0;
          break;
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
