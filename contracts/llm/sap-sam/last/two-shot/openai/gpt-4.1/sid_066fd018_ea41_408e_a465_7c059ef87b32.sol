// test openai/gpt-4.1 - two-shot at 2025-06-12T00:08:35.678Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_066fd018_ea41_408e_a465_7c059ef87b32 {
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
        // <--- sid-FBDE4BCA-F588-46B2-B001-A48909222AA7 Einbuchung Forderungen / Erloese --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-37914B55-2E85-4414-8704-95AAA587D253 Erstellen der Datei fuer die Mieteneinzuege --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-0CC207B6-4489-4AFA-B574-48D8551F0614 Weiterleitung des Datentraegers an Bank --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-7BDBA21B-53A9-4ADC-9D65-A596298ECBA8 Abbuchungen der Mieten --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway "Konto gedeckt?" (sid-8C4EC845-1C61-4448-938B-3A504A73B19E)
      // tokenState bit: 16
      if (_tokenState & 16 == 16) {
        bool transitioned = false;
        // sid-DCF5A59A-EB3A-48F4-B4D9-E1ABAD51884E (Ja) -> sid-39618A3C-58A6-44AC-9142-66016323280F
        if (!transitioned && (conditions & 1 == 1)) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // sid-75315F84-309B-41EE-A715-B91F28B7671A (default/else) -> sid-BEE7DB4D-D839-41F6-8AE3-201B0F3C19C6
        if (!transitioned) {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          transitioned = true;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-39618A3C-58A6-44AC-9142-66016323280F Zahlungseingang --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-BEE7DB4D-D839-41F6-8AE3-201B0F3C19C6 Rueckbuchung Bank --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-C7C013AB-E8A8-46E7-8835-19E028888F5B Ausbuchen der Forderung --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-67E70492-5F82-4F91-84FF-139376BD187D Versand Zahlschein --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      // sid-8E7A7F7A-EB9C-454D-A6F5-00D4B7DCD5D1 (from sid-C7C013AB-E8A8-46E7-8835-19E028888F5B) -> end
      if (_tokenState & 512 == 512) {
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
      }
      // Exclusive Gateway "bezahlt?" (sid-4278D118-EF76-4F37-AFDA-E3B5CFAFED5E)
      // tokenState bit: 1024
      if (_tokenState & 1024 == 1024) {
        bool transitioned = false;
        // sid-98E26E3F-A01A-465B-A634-17031F68CEF0 (Ja) -> end
        if (!transitioned) {
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          transitioned = true;
          break; // is end
        }
        // sid-98CE8884-2359-4B32-B43C-7A6A1396EC49 (conditions & 2 == 2) -> end
        if (!transitioned && (conditions & 2 == 2)) {
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          transitioned = true;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
