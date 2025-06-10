//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_cac59592_c105_4f73_b7a5_c0bb535b2c65 {
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
        // <--- sid-161CC955-E259-4B15-A7F9-EE93E133CD6D Artikel anlegen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-53F40786-CB97-4316-B17F-1048B3059E3F Meldung über Artikelanlage --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-6620E429-CDC3-4277-A66B-8129D2D53ADB Benachrichtigung zur Annahme ober Ablehnung --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-AEC96C4A-D7F4-4492-AA55-5056ADF6D971 Senden des Artikels --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <--- sid-BD175A81-1E4D-400C-9BC5-390E75C175BE Senden der Änderungswünsche und oder Fehler --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 16;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-22337F25-EDDE-40E8-9462-EEC2BBD2B821 freigeben --->
          if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-857C454A-AD32-45D3-BE93-7AEBF1E125A5 Benachrichtigung --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue; 
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}