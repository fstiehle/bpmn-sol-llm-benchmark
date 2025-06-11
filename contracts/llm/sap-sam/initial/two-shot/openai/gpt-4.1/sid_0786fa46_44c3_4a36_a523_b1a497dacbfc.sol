// test openai/gpt-4.1 - two-shot at 2025-06-11T18:35:11.236Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_0786fa46_44c3_4a36_a523_b1a497dacbfc {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {

      // <--- sid-B2637F90-7C26-4326-A98B-CC7716F057B5 eroeffnet Konferenz und laedt Gutachter ein --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task 1 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }

      // <--- ParallelGateway sid-C5DE8EF7-9798-4AE9-8C6F-F97573ABD19C (Diverging) --->
      if (_tokenState & 2 == 2) {
        // Split: activate both sid-2B84B913-C24A-4900-827A-67D2E24D1B60 and sid-92E7E7B5-33E5-4A91-9475-46F467DE7B9E
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }

      // <--- sid-2B84B913-C24A-4900-827A-67D2E24D1B60 Interessen eintragen --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task 2 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }

      // <--- sid-92E7E7B5-33E5-4A91-9475-46F467DE7B9E veroeffentlicht CfP --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task 3 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }

      // <--- sid-8DC72FFD-BFE4-4C29-9988-E2F6AD7AF422 reicht Paper ein --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[8]) {
        // <--- custom code for task 4 here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }

      // <--- ParallelGateway sid-66BC2340-5047-444C-AF54-3C8AAC6A6261 (Converging) --->
      if (_tokenState & 32 == 32) {
        // Join: wait for both sid-2B84B913-C24A-4900-827A-67D2E24D1B60 and sid-8DC72FFD-BFE4-4C29-9988-E2F6AD7AF422 to complete
        // But since both have separate tokens, we join when both are off and set 128 (sid-4219A247-23E0-4712-9F1E-F40D9B45BF28)
        if ((_tokenState & 16 == 0) && (_tokenState & 4 == 0)) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      // <--- sid-4219A247-23E0-4712-9F1E-F40D9B45BF28 teilt Paper den Gutachtern zu und fordert zur fristgerechten Abgabe auf --->
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[10]) {
        // <--- custom code for task 5 here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }

      // <--- sid-2B8EAFC8-D911-4339-8879-A880BD1D028D begutachtet Paper und traegt Ergebnis ein --->
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[12]) {
        // <--- custom code for task 6 here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }

      // <--- sid-012F2B4A-D805-45FF-A552-E363B0211104 entscheidet ueber Annahme --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[14]) {
        // <--- custom code for task 7 here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }

      // <--- sid-44BD4E07-0F32-4C6A-94CD-C611847E6F84 benachrichtigt ueber Annahme/Ablehnung --->
      if (_tokenState & 1024 == 1024) {
        if (8 == id && msg.sender == participants[16]) {
        // <--- custom code for task 8 here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}