// test openai/gpt-4.1 - two-shot at 2025-06-12T01:11:01.058Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_688a7c40_4690_4e91_bd88_bc9d336dfaed {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-679D0305-B6E0-4E58-90A7-65F71C959523 Kundenanruf --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-FD70D51F-BA7F-40A9-9154-9DDC364BAC6D Problem analysieren --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway "Problem am Telefon loesbar?"
      if (_tokenState & 4 == 4) {
        // sid-30034C1A-5FF4-4FF6-9FF4-51F643D34753
        bool didTransition = false;
        // Ja: sid-3FADF14B-F2C5-48B9-9469-35116A794255 to sid-F5EA1FDA-6D80-4211-A079-D014E4C6DAD5 (task 3)
        if (!didTransition && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
        }
        // Default: sid-535F27FC-6597-49A2-8B59-393D28C32038 to sid-164C9B7A-A1E4-49FA-BD80-474895E787BF (task 4)
        if (!didTransition) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-F5EA1FDA-6D80-4211-A079-D014E4C6DAD5 Loesung uebermitteln --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-164C9B7A-A1E4-49FA-BD80-474895E787BF Problem weiterleiten --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-528263A0-769D-4C63-AD6C-BE72456E0888 Problem uebermitteln --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-7AD65D28-6CA5-43C1-8B36-BBB39A620E5A Problem loesen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-E60887BF-A736-4531-926C-C6316CBC1A10 Zeit und Kosten erfassen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-72D3C0FD-9775-4B90-BCB8-A816D0043095 Formular unterschreiben --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
