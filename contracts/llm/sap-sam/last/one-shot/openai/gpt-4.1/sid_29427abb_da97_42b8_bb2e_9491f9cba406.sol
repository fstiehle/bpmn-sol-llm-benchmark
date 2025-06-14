// test openai/gpt-4.1 - one-shot at 2025-06-11T23:30:36.317Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_29427abb_da97_42b8_bb2e_9491f9cba406 {
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
      // Task 1: prijavljivanje_problema, initiated by participants[0]
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- prijavljivanje_problema --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: dobijanje_detaljnog_opisa_problema, initiated by participants[3]
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- dobijanje_detaljnog_opisa_problema --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway sid-D370EFBF_A319_44D2_9A22_9E8EEFE87248: bit 4
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // Conditional outgoing: sid-1AEB3B8F-A61C-41C5-840D-D34CCBA279C3
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          transitioned = true;
          continue;
        }
        // Default outgoing: sid-C401276F-1272-460C-BB12-AF54E609FC66
        if (!transitioned) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // Task 3: davanje_instrukcija_za_resavanje_problema, initiated by participants[5]
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
          // <--- davanje_instrukcija_za_resavanje_problema --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      // Task 4: prosledjivanje_problema_tehnickoj_podrsci, initiated by participants[6]
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- prosledjivanje_problema_tehnickoj_podrsci --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 5: dostavljanje_resenja, initiated by participants[9]
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[9]) {
          // <--- dostavljanje_resenja --->
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
