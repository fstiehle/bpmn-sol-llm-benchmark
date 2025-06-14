// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:18:09.365Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
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
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93 Sharing files --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F Rating information --->
          if (2 == id && msg.sender == participants[2]) {
            // <--- custom code for task here --->
            _tokenState &= ~uint(2);
            _tokenState |= 8;
            id = 0;
            continue;
          }
        } else if (conditions & 2 == 2) {
          // <--- sid-E53918A0-21BF-446B-B821-F5F45B4E3861 Enriching information --->
          if (3 == id && msg.sender == participants[4]) {
            // <--- custom code for task here --->
            _tokenState &= ~uint(2);
            _tokenState |= 16;
            id = 0;
            continue;
          }
        } else {
          // <--- default flow --->
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F Rating information --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-E53918A0-21BF-446B-B821-F5F45B4E3861 Enriching information --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E Retrieving information --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
