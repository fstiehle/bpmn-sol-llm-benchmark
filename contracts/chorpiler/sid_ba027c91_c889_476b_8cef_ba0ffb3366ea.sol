//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_ba027c91_c889_476b_8cef_ba0ffb3366ea {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;

  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B9E929A8-1C3E-435E-9C3C-E4DF7F6B5BDF Nach Werbeanzeige fragen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-0CF95C2E-2839-43EF-B630-573F9A42E534 Angebot erstellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 2 == 2) {
          // <--- sid-E2C32FF3-2D0F-4C7B-885B-D08B0E7DCB59 Angebot ablehnen --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        if (conditions & 1 == 1) {
          // <--- sid-3E545021-E304-4677-B9A5-F4CA25010334 Änderungswünsche erteilen --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-9775E91E-653A-4940-B21A-8D960C4C69C3 Angebot annehmen --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-B178CF57-29BF-4C47-8599-254B879D5926 Verfügbarkeit abfragen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-BD6841AF-33A6-4D40-B3BE-4B688EDB4C7E Auftrag freigeben --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-33FB00EF-7E73-48C5-B5DE-4C028F43C61C Grafik erstellen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-3E3C5F19-A247-435F-9530-ECE09596FF57 Werbeanzeige vorlegen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}