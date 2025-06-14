// test openai/gpt-4.1 - one-shot at 2025-06-11T23:35:04.588Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_358b40f6_533a_4871_9977_612ac09f0df0 {
  uint public tokenState = 1;
  address[13] public participants;
  uint public conditions;

  constructor(address[13] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-3864AF81-D77E-4BDF-B04A-37A36CDA95AB: Unterlagen von LV anfordern
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task 1
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-2AE8694D-5220-4899-B2AF-129CDEF92152: Unterlagen fuer Bank bearbeiten
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task 2
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-364C20F3-8EC5-4B6E-A1BE-B3D4754B613E: Pfandrecht Eintragung ins Grundbuch
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task 3
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // sid-9843D9F4-7039-4AFB-BA38-B021D8E5DD43: Zuzaehlung nach Baufortschritt einfordern
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task 4
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-7C24CC5A-BF7B-4DCC-A22D-39AF6BC6D02B: Endabrechnung mit Land OOe
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for task 5
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-27232A43-7505-4987-8DCE-A6C9EF8849FF: Sondertilgung berechnen und buchen
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[11]) {
          // custom code for task 6
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}