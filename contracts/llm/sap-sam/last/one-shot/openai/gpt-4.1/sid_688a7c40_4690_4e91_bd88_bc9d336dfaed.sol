// test openai/gpt-4.1 - one-shot at 2025-06-11T23:46:23.292Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_688a7c40_4690_4e91_bd88_bc9d336dfaed {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-679D0305-B6E0-4E58-90A7-65F71C959523 Kundenanruf --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-FD70D51F-BA7F-40A9-9154-9DDC364BAC6D Problem analysieren --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // <--- sid-F5EA1FDA-6D80-4211-A079-D014E4C6DAD5 Loesung uebermitteln --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-164C9B7A-A1E4-49FA-BD80-474895E787BF Problem weiterleiten --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-528263A0-769D-4C63-AD6C-BE72456E0888 Problem uebermitteln --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // <--- sid-7AD65D28-6CA5-43C1-8B36-BBB39A620E5A Problem loesen --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // <--- sid-E60887BF-A736-4531-926C-C6316CBC1A10 Zeit und Kosten erfassen --->
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // <--- sid-72D3C0FD-9775-4B90-BCB8-A816D0043095 Formular unterschreiben --->
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break;
        }
      }
      // <--- ExclusiveGateway sid-30034C1A_5FF4_4FF6_9FF4_51F643D34753 --->
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // Ja: to sid-F5EA1FDA-6D80-4211-A079-D014E4C6DAD5 (bit 8)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // Default: to sid-164C9B7A-A1E4-49FA-BD80-474895E787BF (bit 16)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}