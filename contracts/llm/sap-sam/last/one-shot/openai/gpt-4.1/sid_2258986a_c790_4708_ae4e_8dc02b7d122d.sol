// test openai/gpt-4.1 - one-shot at 2025-06-11T23:28:05.572Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2258986a_c790_4708_ae4e_8dc02b7d122d {
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
      // <--- sid-5003F6B4-8FBE-4A33-981F-AE7EC993A202 Schickt_Antragsformular_ab --->
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for task Schickt_Antragsformular_ab
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-F85E2B91-4489-4968-B5B6-8D84011DDA42 Informieren_ueber_Ablehnung --->
      if (_tokenState & 8 == 8) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code for task Informieren_ueber_Ablehnung
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-CAB5DD5D-BE94-4F7E-A643-81D13F16131A Informieren_ueber_Zustimmung --->
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code for task Informieren_ueber_Zustimmung
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break;
        }
      }
      // <--- ExclusiveGateway sid-5B93C6E1_A3E2_44F3_B88A_9ED8EDC7B13A: bits 2 --->
      if (_tokenState & 2 == 2) {
        bool didTransition = false;
        // condition: conditions & 1 == 1 (sid-811BD5FE-A066-45C4-8222-7F95EA574C02)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 16; // to Informieren_ueber_Zustimmung
          didTransition = true;
          continue;
        }
        // default: sid-87973F1F-DC71-4FC4-AB0C-1EC45459ED7C -> Informieren_ueber_Ablehnung
        if (!didTransition) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}