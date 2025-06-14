// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:51:36.303Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_802c863c_4e9f_4fd4_91a3_c6441402a47b {
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
        // <--- ChoreographyTask sid-E28CC24B-AC58-49CC-BFFA-0D9EF3EF42BE Änderungsvorschlag kommunizieren --->
        if (1 == id && (msg.sender == participants[0] || msg.sender == participants[1] || msg.sender == participants[2])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1 Besprechung ansetzen --->
        if (2 == id && (msg.sender == participants[3] || msg.sender == participants[4] || msg.sender == participants[5])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-E9C763EC-A03F-4549-A09D-A01F35017123 Information --->
        if (3 == id && (msg.sender == participants[6] || msg.sender == participants[7])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-A216BD63-B9E5-49FE-9886-390805B714A1 Vorschlag bearbeiten --->
        if (4 == id && (msg.sender == participants[8] || msg.sender == participants[9])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-2BD93612-BF47-4CC1-A8AF-29908F355C95 Vorschlag bearbeiten --->
        if (5 == id && (msg.sender == participants[10] || msg.sender == participants[11])) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
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
