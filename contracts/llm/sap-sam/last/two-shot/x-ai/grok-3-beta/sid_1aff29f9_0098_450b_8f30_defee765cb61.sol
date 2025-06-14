// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:20:53.468Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_1aff29f9_0098_450b_8f30_defee765cb61 {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-08E44EEC-F5A2-4529-9B95-DAA0B1553E3B Kunde fullt Formular aus --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-71EECEC0-BED7-4D5B-A3B9-F5E0A08A1B91 Ticket erstellen --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-04736748-3A55-4172-8EC2-70379C6D6C1C Meldet sich an --->
        if (10 == id && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C3423358-0834-46F4-9BEF-2312F3F5670B Ticket auswaehlen --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-640C6210-0293-4116-9743-EE1E3CECEBC1 Ticket bearbeiten --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-4A7608DF-1B16-49D8-8329-8CE3A53FEB93 Status veraendern --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-C1BA5A74-1714-45AF-B4E3-8A6DA558B477 Ticket abschliessen --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-B568F431-74F6-46AC-932A-58E90EB96830 Ticket abspeichern --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-0E65D5AE-A506-4126-AD69-2C5AF174C9BE Rueckmeldung zu Bearbeitung geben --->
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-B42BA3E1-4936-4177-9785-0CBF5888F7DB Rueckmeldung einsehen --->
        if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 1 == 1) {
          // <--- auto transition for sid-0F1C5333-10D0-4B87-80D3-59126F5AB5F7 --->
          _tokenState &= ~uint(16);
          _tokenState |= 0; // Follow the condition path to end
          break; // is end
        } else {
          // <--- default path for sid-0F1C5333-10D0-4B87-80D3-59126F5AB5F7 --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}