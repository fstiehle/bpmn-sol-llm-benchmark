// test openai/gpt-4.1 - two-shot at 2025-06-12T01:53:55.099Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9c5ded8f_d4e2_4108_a8c0_491376444823 {
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
      // sid-5E016529-61C6-4145-B0FE-2D3A09890067 Przyjmij pacjenta
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Przyjmij pacjenta here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // sid-6A80CAC2-0693-49CC-93AE-99B8F5168A60 Poczekaj na organ
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Poczekaj na organ here --->
        _tokenState &= ~uint(2);
        // event-based gateway split: both outgoing
        _tokenState |= 12;
        id = 0;
        continue; 
        }
      }
      // sid-BA78A708-DDDF-456A-BF00-5A762D0F7D35 Poczekaj na gotowosc zespolu
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Poczekaj na gotowosc zespolu here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // sid-2B07B286-2482-4BFA-95A9-59CFD87112F0 Poczekaj na decyzje dotyczaca gotowosci zespolu
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Poczekaj na decyzje dotyczaca gotowosci zespolu here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-AB42C175-3483-4A91-A939-0CC7F6045F09 Przetransportuj organ
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Przetransportuj organ here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // auto transition from Poczekaj na gotowosc zespolu to Przetransportuj organ
      // no gateways between, just direct flow
      // event-based gateway: handled by split above (both 4 and 8 enabled after 2)
      break;
    }
    tokenState = _tokenState;
  }
}