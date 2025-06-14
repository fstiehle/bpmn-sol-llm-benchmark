//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_ece51571_13ba_41d8_8688_057c876cc093 {
  uint public tokenState = 1;
  address[24] public participants;
  uint public conditions;

  constructor(address[24] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B020ABB4-E1DC-4699-9AFB-DC499C6DEFC7 Einreichung des Artikels --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-BCCA6FC4-B4F3-4294-BC0E-09D2C4683B0F lehnt Inserierung ab --->
          if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-EE6304AF-0457-4569-916C-F2734D11F2C7 inseriert Artikel --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-D17EA4C0-6C34-4A47-AE55-95A9CFD9782F werden über Artikel per Email informiert --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-10C4FC75-0471-4678-9641-99BCCCA63621 versteigert Artikel --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 96;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-C5BF85AA-5481-44C5-9769-8580ECF4B2C2 prüft Artikel --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 96 == 96) {
        // <--- sid-18B04E9C-D64F-4D2E-8727-7BDF52A105D6 löscht Artikel und informiert Verkäufer --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(96);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-23BE0EDE-9CBA-4724-AE2D-83AD6FD83263 fordert zu Zahlung auf --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-43E15B32-508D-4AC8-A678-AF2BBF7BCECA fordert zu Versand auf --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-49A8580D-FE33-4CEA-889D-D6962B13D4AB bezahlt --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-0EA89E01-D84D-4588-9AD3-9946A1749E82 bezahlt Anteil --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-E6BAE8BC-B37E-4100-8976-B34914A66443 versendet --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 3072 == 3072) {
        // <---  auto transition  --->
        _tokenState &= ~uint(3072);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }

    tokenState = _tokenState;
  }

}