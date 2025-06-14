// test openai/gpt-4.1 - two-shot at 2025-06-12T00:12:46.608Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_2258986a_c790_4708_ae4e_8dc02b7d122d {
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
      if (_tokenState & 4 == 4) {
        // <--- sid-F85E2B91-4489-4968-B5B6-8D84011DDA42 Informieren ueber Ablehnung --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CAB5DD5D-BE94-4F7E-A643-81D13F16131A Informieren ueber Zustimmung --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // Exclusive Gateway sid-5B93C6E1-A3E2-44F3-B88A-9ED8EDC7B13A
        // Outgoing: sid-87973F1F-DC71-4FC4-AB0C-1EC45459ED7C (default -> Ablehnung), sid-811BD5FE-A066-45C4-8222-7F95EA574C02 (condition)
        if (conditions & 1 == 1) {
          // conditions & 1 == 1 to Informieren ueber Zustimmung
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          // default: to Informieren ueber Ablehnung
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}