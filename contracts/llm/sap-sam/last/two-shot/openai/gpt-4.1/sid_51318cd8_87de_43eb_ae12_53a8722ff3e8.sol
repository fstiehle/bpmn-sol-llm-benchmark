// test openai/gpt-4.1 - two-shot at 2025-06-12T01:04:31.135Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_51318cd8_87de_43eb_ae12_53a8722ff3e8 {
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
      // sid-1BAD194A-9703-4904-A294-AC9F0CAE37CB Bestellung aufgeben
      if (_tokenState & 1 == 1) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for Bestellung aufgeben here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-5215CCEA-6F76-4A6B-A05C-6C8B496FC02A Kassenbon aushändigen
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Kassenbon aushandigen here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-368D5D27-DD58-48D4-9867-3245E8D661C6 Quitting bezahlen
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Quitting bezahlen here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-0E20545F-12E5-419D-8798-AD7B746B8744 Informationen zu Feedback übergeben
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Informationen zu Feedback ubergeben here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-2A104376-3AFF-40B5-9599-9F5F0B636EC7 Kunde will kein Feedback abgeben
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Kunde will kein Feedback abgeben here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-AB7BC7F4-570A-419F-9ADD-6E51F01F3F04 Zustimmung
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Zustimmung here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // sid-AC4DDDB3-60C0-4778-86F8-7DD28C136825 Feedback abgeben
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for Feedback abgeben here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- Exclusive Gateway sid-6C4A1F5C-E949-42A8-8C23-6CEA1F458315 handling --->
      // tokenState 16: at sid-0E20545F-12E5-419D-8798-AD7B746B8744 -> sid-6C4A1F5C-E949-42A8-8C23-6CEA1F458315
      // outgoing: sid-697F1AAF-409D-4F34-BCED-A406123DA538 (to sid-2A104376...), has condition
      // outgoing: sid-0B170B07-ABB7-4746-8685-E3DFFEDE8A55 (to sid-AB7BC7F4...), default
      if (_tokenState & 16 == 16) {
        bool transitioned = false;
        // sid-697F1AAF-409D-4F34-BCED-A406123DA538 condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // default: sid-0B170B07-ABB7-4746-8685-E3DFFEDE8A55
        if (!transitioned) {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}