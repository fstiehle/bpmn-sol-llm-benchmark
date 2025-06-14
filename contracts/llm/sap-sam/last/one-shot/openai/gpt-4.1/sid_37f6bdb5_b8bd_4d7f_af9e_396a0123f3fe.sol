// test openai/gpt-4.1 - one-shot at 2025-06-11T23:36:16.455Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_37f6bdb5_b8bd_4d7f_af9e_396a0123f3fe {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;
  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-D082CB9A-9032-4E4F-A774-24587B56EC2C: Will_App_herunterladen
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Will_App_herunterladen here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-A99EC8AF-2A07-42B8-B705-C349B0697C0A: Aufforderung_zur_Registrierung
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Aufforderung_zur_Registrierung here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-73C4A4E8-1BF5-44AF-9E6F-56BF193B6006: Registrierung
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Registrierung here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-3692247E-B6E2-4D88-A25C-663B2ECA3078: sucht_App_im_Store
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sucht_App_im_Store here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-1966F81A-52D3-430F-A06C-158E890CF831: moechte_App_herunterladen
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for moechte_App_herunterladen here --->
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // sid-F3304F4E-5727-4B0C-A448-BF7B0B817EB0: Datenueberpruefungen
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for Datenueberpruefungen here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-F48B99BF-6D6F-45FD-924D-DF72B4957793: App_zum_Herunterladen_freigeben
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for App_zum_Herunterladen_freigeben here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-E1BF0A38-F29B-4BB1-9639-3C8E12F20701: Freigabe_zum_Herunterladen
      if (_tokenState & 2048 == 2048) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for Freigabe_zum_Herunterladen here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // sid-B31C9288-7361-40F1-A639-17D9BDC7C7B3: Zahlungsaufforderung
      if (_tokenState & 512 == 512) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for Zahlungsaufforderung here --->
        _tokenState &= ~uint(512);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // sid-5EC4C845-4A7C-4094-A7A3-8CC6E152F5BB: Zahlung
      if (_tokenState & 8192 == 8192) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for Zahlung here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // sid-3A73F6D4-1226-4FDD-B16B-3E5F3C7B6B4B: Herunterladen_der_App
      if (_tokenState & 4096 == 4096) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for Herunterladen_der_App here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}