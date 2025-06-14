// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:29:11.781Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_2258986a_c790_4708_ae4e_8dc02b7d122d {
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
        // <--- sid-5003F6B4-8FBE-4A33-981F-AE7EC993A202 Schickt Antragsformular ab --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway_5B93C6E1-A3E2-44F3-B88A-9ED8EDC7B13A --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-CAB5DD5D-BE94-4F7E-A643-81D13F16131A Informieren über Zustimmung --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-F85E2B91-4489-4968-B5B6-8D84011DDA42 Informieren über Ablehnung --->
        if (2 == id && msg.sender == participants[2]) {
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
