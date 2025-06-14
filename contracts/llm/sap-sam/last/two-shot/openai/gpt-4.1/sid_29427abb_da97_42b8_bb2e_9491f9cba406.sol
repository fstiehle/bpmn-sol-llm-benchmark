// test openai/gpt-4.1 - two-shot at 2025-06-12T00:15:27.722Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_29427abb_da97_42b8_bb2e_9491f9cba406 {
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
        // <--- sid-0E2FFC62-7785-4536-B540-A2CEEEBCD7BF prijavljivanje_problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-3FF02039-7912-495C-A954-1180AA9D542F dobijanje_detaljnog_opisa_problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // ExclusiveGateway sid-D370EFBF_A319_44D2_9A22_9E8EEFE87248
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // sid-C401276F-1272-460C-BB12-AF54E609FC66 (da)
        if (!transitioned && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          transitioned = true;
          continue;
        }
        // sid-1AEB3B8F-A61C-41C5-840D-D34CCBA279C3 (default: conditions & 1 == 1)
        if (!transitioned) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-219196E3-11E9-4006-A960-CBA666C8F5A7 davanje_instrukcija_za_resavanje_problema --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-5E468D82-5C58-4448-B00F-975F17DB1452 prosledjivanje_problema_tehnickoj_podrsci --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-C87CD8DA-DBB1-49FF-80DF-7C6E9D6FB5D8 dostavljanje_resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
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
