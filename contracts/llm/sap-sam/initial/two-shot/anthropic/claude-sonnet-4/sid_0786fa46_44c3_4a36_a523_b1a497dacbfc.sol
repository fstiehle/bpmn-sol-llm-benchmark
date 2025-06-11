// test anthropic/claude-sonnet-4 - two-shot at 2025-06-11T18:38:51.404Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_0786fa46_44c3_4a36_a523_b1a497dacbfc {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-B2637F90-7C26-4326-A98B-CC7716F057B5 eroeffnet Konferenz und laedt Gutachter ein --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-2B84B913-C24A-4900-827A-67D2E24D1B60 Interessen eintragen --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-92E7E7B5-33E5-4A91-9475-46F467DE7B9E veroeffentlicht CfP --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-8DC72FFD-BFE4-4C29-9988-E2F6AD7AF422 reicht Paper ein --->
        if (4 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-4219A247-23E0-4712-9F1E-F40D9B45BF28 teilt Paper den Gutachtern zu und fordert zur fristgerechten Abgabe auf --->
        if (5 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-2B8EAFC8-D911-4339-8879-A880BD1D028D begutachtet Paper und traegt Ergebnis ein --->
        if (6 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-012F2B4A-D805-45FF-A552-E363B0211104 entscheidet ueber Annahme --->
        if (7 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-44BD4E07-0F32-4C6A-94CD-C611847E6F84 benachrichtigt ueber Annahme/Ablehnung --->
        if (8 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 6 == 6) {
        // <---  auto transition  --->
        _tokenState &= ~uint(6);
        _tokenState |= 4;
        continue; 
      }
      if (_tokenState & 40 == 40) {
        // <---  auto transition  --->
        _tokenState &= ~uint(40);
        _tokenState |= 64;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
