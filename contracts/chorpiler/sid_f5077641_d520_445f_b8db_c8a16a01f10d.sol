//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_f5077641_d520_445f_b8db_c8a16a01f10d {
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
      if (_tokenState & 2 == 2) {
        // <--- sid-A49B4766-A0EC-4174-A7CD-240AD5545A33 Lagerbestand mitteilen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-F323C320-7F85-4E52-94A3-393D130B82C4 Ware bestellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-F30115AC-8F4D-459E-9469-2121FF706FFF Auftrag bearbeiten --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-2435F6AD-9DD0-44F4-9CB4-EE9C954A85FA Ware verladen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-4BE3146B-16BF-4846-95FE-CDD5838F8B97 Prüfen und annehmen der Ware --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          // <--- sid-EDB7D7A2-8700-4ED6-AE92-4826D0DB0D5D Wareneingang im System registrieren --->
          if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-431BECEE-2F25-47A2-A70D-9BD371C4A2B9 Fehlende &amp;#10;Ware vermerken --->
          if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-4B0E3B5A-ADAB-411A-874F-DD75A315611B Ware einlagern --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-8DE5D3EB-F715-451B-B446-A5851DE6C19E Ware versenden --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- sid-BC973045-8C1F-4517-B4A6-2822D4A7B431 Auftrag erteilen --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue; 
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}