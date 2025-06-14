// test openai/gpt-4.1 - one-shot at 2025-06-11T23:24:07.067Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_04d84a1d_db2d_455e_bc39_0d7a8eaa8f28 {
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
          // <--- custom code for Bewerbung_senden here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      // sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 Anforderung_fehlender_Unterlagen_senden
      if (_tokenState & 2 == 2) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for Anforderung_fehlender_Unterlagen_senden here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      // sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 Anforderung_fehlender_Unterlagen_und_fehlende_Unterlagen_senden
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for Anforderung_fehlender_Unterlagen_und_fehlende_Unterlagen_senden here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      // Exclusive Gateway sid-D340AC70-2307-4E80-8785-E5DA4C7A0ED3
      if (_tokenState & 8 == 8) {
        bool transitioned = false;
        // sid-1C0983D5-AEDC-4272-8A99-38C0771C3BC1: conditions & 1 == 1 --> Absage_senden
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // Default: sid-4E520F02-A908-4D44-860F-C683A4D6CA97 --> Zusage_senden
        if (!transitioned) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      // sid-BDE1D3D8-4D00-4E32-9797-AFB900D98670 Zusage_senden
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for Zusage_senden here --->
          _tokenState &= ~uint(16);
          // End event
          _tokenState = 0;
          break;
        }
      }
      // sid-6E0647F7-8CDA-43ED-B9A1-670087E29BA6 Absage_senden
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for Absage_senden here --->
          _tokenState &= ~uint(32);
          // End event
          _tokenState = 0;
          break;
        }
      }
      // No further progress, stop.
      break;
    }
    tokenState = _tokenState;
  }
}