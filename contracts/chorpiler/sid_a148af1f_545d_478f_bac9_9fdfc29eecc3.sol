//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_a148af1f_545d_478f_bac9_9fdfc29eecc3 {
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
        // <--- sid-38D52F50-00D1-46EE-9D20-32A7DC008B1A Registrierung auslösen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5C265212-5FCE-43E9-9A48-B3B4FB70DF1A Öffnet Fenster --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-BDCC0641-55FF-4B0C-8B02-3BF67FE47793 Gibt Daten ein --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-2B8C19D7-C75E-425F-81DB-214DD515716F Zwischenspeichert Daten --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-9275365C-B8F4-455B-B549-DC43B42AA447 Gibt Passwort&amp;#10;nochmals ein --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-E839E9F0-3517-4B2E-BED2-0859E630C364 Prüft auf&amp;#10;Übereinstimmung --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 1 == 1) {
          // <--- sid-78623B09-132D-475B-A1B5-DCE794B0B54E bestätigt Registrierung --->
          if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-D3CF1679-CC03-4106-918E-D9980A50FE7D Speichert Daten ab --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
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