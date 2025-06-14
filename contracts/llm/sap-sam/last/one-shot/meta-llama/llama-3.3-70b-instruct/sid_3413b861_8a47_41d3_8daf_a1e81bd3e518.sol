// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:19:39.263Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_3413b861_8a47_41d3_8daf_a1e81bd3e518 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    uint id = taskID;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_0CB4AAC5-693A-4689-A62F-ED9E9AD3FC1E Slanje opisa problema --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_1A819D31-39BF-4D46-BCA2-B179558E994C Dobijanje detaljnog opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- Gateway_23D431AF-1D80-42F9-839E-B870F7ACDE9B Operater zna da resi? --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_95FC3A8B-EA99-429F-8CD6-660CB56644B7 Slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_C978C6C9-48E1-49A2-A2FA-65F0F7BC5B41  --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 1 == 1) {
          // <--- Gateway_FFB7BEA7-8E19-4FD3-A880-B7BBF1AEBD24 Podrska prvog nivoa zna da resi --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_57C81B29-22B6-49FC-ACFA-7F9A22C75876 Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_B8C46AE2-A3B0-4B1F-BE47-9899F5B33EAA Slanje opisa problena --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_7D2DD5DA-0D4D-494E-8195-4923284FEB9F Slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
