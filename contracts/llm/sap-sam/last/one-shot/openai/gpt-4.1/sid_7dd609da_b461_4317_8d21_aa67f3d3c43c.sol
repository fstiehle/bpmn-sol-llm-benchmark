// test openai/gpt-4.1 - one-shot at 2025-06-11T23:51:59.498Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_7dd609da_b461_4317_8d21_aa67f3d3c43c {
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
      // sid-D8DF7A5B-B137-4687-A879-69C850052582: Prijavljivanje_problema (taskID 1, initiator sid-B0B0FC8A-FFBF-402E-B996-13E90574A08A => participants[0])
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for Prijavljivanje_problema --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-57A72721-2BE2-4D5C-B58E-5A4A1348616A: Dobijanje_detaljnog_opisa_problema (taskID 2, initiator sid-21BDA824-90B3-4FA8-BE0D-AFE1544708CC => participants[2])
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for Dobijanje_detaljnog_opisa_problema --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B: (taskID 3, initiator sid-0ECEB28B-2F17-40D9-8942-6A2E1C35165D => participants[4])
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for operator provides solution --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      // sid-F090F35F-F607-4150-ADBD-5618474E68B2: Konsultovanje_tehnicke_podrske (taskID 4, initiator sid-01AA4D2D-B02C-4D35-9E1B-2BF9C45202A0 => participants[6])
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for Konsultovanje_tehnicke_podrske --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-4E287ACC-E235-4363-97B3-7E34EA6B639B: Dostavljanje_resenja (taskID 5, initiator sid-D84B30F1-B77F-4523-B440-2E40C13DF844 => participants[8])
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for Dostavljanje_resenja --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-521CBDD1-6F23-41C1-BBFA-E19A3E418B0F
      if (_tokenState & 4 == 4) {
        // Evaluate conditions
        // sequenceFlow sid-7B81649E-9911-4FC0-84F3-55D10537283E: "conditions & 1 == 1" to sid-F090F35F-F607-4150-ADBD-5618474E68B2 (bit 8)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
        // default: sid-1CDD848F-F110-42FB-A4E4-9A55671EF37E to sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B (bit 32)
        else {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}