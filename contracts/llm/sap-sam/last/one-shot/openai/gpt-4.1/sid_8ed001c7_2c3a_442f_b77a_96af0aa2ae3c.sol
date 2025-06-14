// test openai/gpt-4.1 - one-shot at 2025-06-11T23:56:28.666Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_8ed001c7_2c3a_442f_b77a_96af0aa2ae3c {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // Task 1: anfrage_stellen
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- anfrage_stellen --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: angebot_vorlegen
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- angebot_vorlegen --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Gateway sid_1F6F2DA4_DC5B_4C6E_97D5_7A930E813EC0 (Exclusive)
      if (_tokenState & 4 == 4) {
        // <--- ExclusiveGateway sid_1F6F2DA4_DC5B_4C6E_97D5_7A930E813EC0 --->
        // SequenceFlow sid-B01CD07B-166F-4BFE-81AE-13429F0DAC79
        // to angebot_annehmen (task 3)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
        // SequenceFlow sid-EBFD6BBA-17CE-43BF-9795-BC6FD575572F
        // to angebot_ablehnen (task 4)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
        // default: to angebot_ablehnen (task 4)
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        continue;
      }
      // Task 3: angebot_annehmen
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- angebot_annehmen --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 4: angebot_ablehnen
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- angebot_ablehnen --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // End event
        }
      }
      // Task 5: verfugbarkeit_prufen
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- verfugbarkeit_prufen --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 6: kaffebohnen_bestellen
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- kaffebohnen_bestellen --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Task 7: kaffebohnen_an_gmbh_schoicken
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- kaffebohnen_an_gmbh_schoicken --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // End event
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}