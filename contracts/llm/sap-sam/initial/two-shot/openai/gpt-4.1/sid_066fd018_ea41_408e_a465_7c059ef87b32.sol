// test openai/gpt-4.1 - two-shot at 2025-06-11T18:34:39.003Z
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
      // ---- Task 1: sid-FBDE4BCA-F588-46B2-B001-A48909222AA7 Einbuchung Forderungen / Erloese
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // ---- Task 2: sid-37914B55-2E85-4414-8704-95AAA587D253 Erstellen der Datei fuer die Mieteneinzuege
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // ---- Task 3: sid-0CC207B6-4489-4AFA-B574-48D8551F0614 Weiterleitung des Datentraegers an Bank
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // ---- Task 4: sid-7BDBA21B-53A9-4ADC-9D65-A596298ECBA8 Abbuchungen der Mieten
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // ---- Exclusive Gateway: sid-8C4EC845-1C61-4448-938B-3A504A73B19E Konto gedeckt?
      // Token: 16
      if (_tokenState & 16 == 16) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // "conditions & 1 == 1" -> to sid-BEE7DB4D-D839-41F6-8AE3-201B0F3C19C6 (Task 6)
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default: to sid-39618A3C-58A6-44AC-9142-66016323280F (Task 5)
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      // ---- Task 5: sid-39618A3C-58A6-44AC-9142-66016323280F Zahlungseingang
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // ---- Task 6: sid-BEE7DB4D-D839-41F6-8AE3-201B0F3C19C6 Rueckbuchung Bank
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // ---- Task 7: sid-C7C013AB-E8A8-46E7-8835-19E028888F5B Ausbuchen der Forderung
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // ---- Task 8: sid-67E70492-5F82-4F91-84FF-139376BD187D Versand Zahlschein
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // ---- Exclusive Gateway: sid-4278D118-EF76-4F37-AFDA-E3B5CFAFED5E bezahlt?
      // Token: 1024
      if (_tokenState & 1024 == 1024) {
        bool transitioned2 = false;
        if (conditions & 2 == 2) {
          // "conditions & 2 == 2" -> to End
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break;
        }
        if (!transitioned2) {
          // default: to End
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break;
        }
      }
      // ---- End event after Ausbuchen der Forderung
      if (_tokenState & 512 == 512) {
        // End event
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}