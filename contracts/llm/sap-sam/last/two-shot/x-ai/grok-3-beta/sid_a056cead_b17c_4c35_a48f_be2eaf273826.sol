// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:48:33.220Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_a056cead_b17c_4c35_a48f_be2eaf273826 {
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
        // <--- sid-109D8857-8D2A-43D2-A758-1A5F8400F151 Anfrage stellen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B Angebot vorlegen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A Absage erteilen --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-70C82863-4B96-40A8-B83F-4FD8E5766088 Aenderungswuensche mitteilen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2 Auftrag erteilen --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-209DC630-CD6C-441D-87C1-A5762EB6AEB3 Verfuegbarkeit anfragen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-08D1DFF5-E462-4E22-876D-382B8314DAA1 Grafik erstellen lassen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-61791D53-81A8-4C6E-B762-852EF1CDEAEB Freigabe holen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue; 
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue; 
        }
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue; 
        }
        // Default path
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}