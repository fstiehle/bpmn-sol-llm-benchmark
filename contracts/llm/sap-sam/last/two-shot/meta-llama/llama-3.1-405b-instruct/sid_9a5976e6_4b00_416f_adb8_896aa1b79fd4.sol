// test meta-llama/llama-3.1-405b-instruct - two-shot at 2025-06-12T20:51:01.564Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_two_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C Mitteilung über Rückrufware senden --->
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
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5 Mitteilung über Rückrufware senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8 Beurteilung der Rückrufware senden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-73AF27ED-C1B7-4550-960B-49B0B084123B Informationen über Rückrufaktion senden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-64FA6A0A-8A78-431A-832D-33E60AF3C869 Auftrag zum Rücktransport senden --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-2414D848-3DBE-43B9-BE5F-7411E200C56C Rückrufware liefern --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
