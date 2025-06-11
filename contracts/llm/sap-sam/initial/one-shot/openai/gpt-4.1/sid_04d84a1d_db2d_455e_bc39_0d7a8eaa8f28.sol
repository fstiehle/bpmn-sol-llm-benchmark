// test openai/gpt-4.1 - one-shot at 2025-06-11T18:32:31.750Z
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
      // <--- sid-DAA1FC43-E64B-4597-9935-D15DD6D869C3 Bewerbung senden --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for Bewerbung senden
          _tokenState &= ~uint(1);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 Anforderungfehlender Unterlagenund fehlendeUnterlagensenden --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for Anforderungfehlender Unterlagenund fehlendeUnterlagensenden
          _tokenState &= ~uint(4);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // <--- sid-BDE1D3D8-4D00-4E32-9797-AFB900D98670 Zusagesenden --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for Zusagesenden
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // end event
        }
      }
      // <--- sid-6E0647F7-8CDA-43ED-B9A1-670087E29BA6 Absagesenden --->
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for Absagesenden
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // end event
        }
      }
      // <--- sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 Anforderungfehlender Unterlagen senden --->
      if (_tokenState & 2 == 2) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for Anforderungfehlender Unterlagen senden
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-D340AC70-2307-4E80-8785-E5DA4C7A0ED3 --->
      if (_tokenState & 8 == 8) {
        // Has two outgoing flows: sid-4E520F02-A908-4D44-860F-C683A4D6CA97 (to Zusagesenden, no condition, is default), sid-1C0983D5-AEDC-4272-8A99-38C0771C3BC1 (to Absagesenden, with condition)
        bool matched = false;
        if (conditions & 1 == 1) {
          // sid-1C0983D5-AEDC-4272-8A99-38C0771C3BC1
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          matched = true;
          continue;
        }
        if (!matched) {
          // default: sid-4E520F02-A908-4D44-860F-C683A4D6CA97
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- sid-DAA1FC43-E64B-4597-9935-D15DD6D869C3 -> sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 --->
      if (_tokenState & 1 == 1) { break; }
      // <--- sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 -> sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 --->
      if (_tokenState & 2 == 2) { break; }
      // <--- sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 -> sid-D340AC70-2307-4E80-8785-E5DA4C7A0ED3 --->
      if (_tokenState & 4 == 4) { break; }
      // <--- End if no more progress --->
      break;
    }
    tokenState = _tokenState;
  }
}
