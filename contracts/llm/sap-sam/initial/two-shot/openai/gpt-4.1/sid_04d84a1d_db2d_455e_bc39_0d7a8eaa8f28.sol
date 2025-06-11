// test openai/gpt-4.1 - two-shot at 2025-06-11T18:34:18.880Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_04d84a1d_db2d_455e_bc39_0d7a8eaa8f28 {
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
      // sid-DAA1FC43-E64B-4597-9935-D15DD6D869C3 Bewerbung senden
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for sid-DAA1FC43-E64B-4597-9935-D15DD6D869C3 Bewerbung senden --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 Anforderung fehlender Unterlagen senden
      if (_tokenState & 2 == 2) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 Anforderung fehlender Unterlagen senden --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 Anforderung fehlender Unterlagen und fehlende Unterlagen senden
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 Anforderung fehlender Unterlagen und fehlende Unterlagen senden --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-BDE1D3D8-4D00-4E32-9797-AFB900D98670 Zusage senden
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-BDE1D3D8-4D00-4E32-9797-AFB900D98670 Zusage senden --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-6E0647F7-8CDA-43ED-B9A1-670087E29BA6 Absage senden
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-6E0647F7-8CDA-43ED-B9A1-670087E29BA6 Absage senden --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // ExclusiveGateway sid-D340AC70-2307-4E80-8785-E5DA4C7A0ED3 (bit 8)
      if (_tokenState & 8 == 8) {
        bool taken = false;
        // sequenceFlow sid-1C0983D5-AEDC-4272-8A99-38C0771C3BC1 with condition: conditions & 1 == 1
        if (!taken && (conditions & 1 == 1)) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          taken = true;
          continue;
        }
        // default sid-4E520F02-A908-4D44-860F-C683A4D6CA97
        if (!taken) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
