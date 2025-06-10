//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_d26ebe6c_cb11_474c_9264_df63a9abdcf4 {
  uint public tokenState = 1;
  address[28] public participants;
  uint public conditions;

  constructor(address[28] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B2503AF7-66C8-43F3-AC1F-6300C584BFDA Registrierung abschließen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- sid-352DC6A0-7DEE-4F39-B1DC-4B88D08D4236 Erfolgreich registriert --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-ECCCEB5A-6CF3-4182-94A4-8549659F6520 Registrierung fehlgeschlagen --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-6BCD9488-1C35-4D01-AD7B-62B9EBD9BEC9 Profil verwalten --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CFEA86B8-A454-4C82-A28A-EE6B2CA845CF Profil überprüfen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-FEE9D8B0-DD99-45B4-8FBA-F08E48F9869F Verifizierung des Profils --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-E2A8D3AC-B1C1-48DC-8AC1-7FF6F4DD20C3 Bestätigung --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 2 == 2) {
          // <--- sid-9229C347-1790-47EC-835C-A89052A5F0CD genehmigen --->
          if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 384;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-CB9AC93F-0E44-420B-AFE7-DB7EC3E088D1 nicht genehmigen --->
          if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-781FDF43-1F9B-48A3-A62D-70B194EA1119 andere Nutzer anrufen --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-81CF1658-29E4-46C8-9BF9-0E0C58EB3991 Freundschaftsanfrage versenden --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1536 == 1536) {
        // <--- sid-20F371BE-A414-432E-A94F-66F61829E913 Freundschaftsanfrage bestätigen oder ablehnen --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1536);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        if (conditions & 4 == 4) {
          // <--- sid-11A16257-FBFF-459D-A317-1FD0B3C87913 Freundschaftsanfragen ablehnen --->
          if (14 == id && msg.sender == participants[26]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-BFBD2221-106A-49C6-9783-9FFA115AD305 Freundschaftsanfrage bestätigen --->
          if (13 == id && msg.sender == participants[24]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}