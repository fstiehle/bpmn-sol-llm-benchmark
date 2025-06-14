// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:51:06.114Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_8ed001c7_2c3a_442f_b77a_96af0aa2ae3c {
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
      if (_tokenState & 1 == 1) {
        // ChoreographyTask sid-BC676960-23F9-4F7B-9EA9-EFD75EF13174 anfrage stellen
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // ChoreographyTask sid-83B3553F-084D-4DB3-AE67-CDA14502E47B Angebot vorlegen
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // ExclusiveGateway sid-1F6F2DA4-DC5B-4C6E-97D5-7A930E813EC0
        if (conditions & 1 == 1) {
          // Transition to sid-FD9325D9-C67E-4CEB-A961-7D37B3FD6822
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
        if (conditions & 2 == 2) {
          // Transition to sid-294C7BB5-AE35-45CD-88C4-BEEC829E3391
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
        break;
      }
      if (_tokenState & 8 == 8) {
        // ChoreographyTask sid-FD9325D9-C67E-4CEB-A961-7D37B3FD6822 angebot annehmen
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // ChoreographyTask sid-294C7BB5-AE35-45CD-88C4-BEEC829E3391 angebot ablehnen
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // ChoreographyTask sid-BAD12DD8-61E5-43CE-AF0A-15F217994338 Verfuegbarkeit pruefen
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // ChoreographyTask sid-0A67D3C3-2A37-4E8C-B339-B9FB95D1E7D3 kaffebohnen bestellen
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // ChoreographyTask sid-AEE98631-784A-44AE-B5FB-9AA162840E22 kaffebohnen an gmbh schoicken
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
