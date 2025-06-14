// test openai/gpt-4.1 - one-shot at 2025-06-12T00:00:03.702Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9c5ded8f_d4e2_4108_a8c0_491376444823 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_5E016529_61C6_4145_B0FE_2D3A09890067 Przyjmij pacjenta --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_6A80CAC2_0693_49CC_93AE_99B8F5168A60 Poczekaj na organ --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Exclusive Gateway sid_A83E263F_B397_4094_BE32_7BE61E44C43F --->
        // This is an exclusive gateway, no conditions, just a split
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_BA78A708_DDDF_456A_BF00_5A762D0F7D35 Poczekaj na gotowosc zespolu --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_2B07B286_2482_4BFA_95A9_59CFD87112F0 Poczekaj na decyzje dotyczaca gotowosci zespolu --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_AB42C175_3483_4A91_A939_0CC7F6045F09 Przetransportuj organ --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- End Event Organ przetransportowany from AB42C175_3483_4A91_A939_0CC7F6045F09 --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break;
      }
      if (_tokenState & 128 == 128) {
        // <--- End Event Organ przetransportowany from 2B07B286_2482_4BFA_95A9_59CFD87112F0 --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}