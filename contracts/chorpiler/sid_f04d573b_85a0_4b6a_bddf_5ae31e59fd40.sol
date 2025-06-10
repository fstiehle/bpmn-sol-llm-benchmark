//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_f04d573b_85a0_4b6a_bddf_5ae31e59fd40 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-252F628C-9454-4046-8976-E9F99908B848 Neuer Kundenvorgang --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-DF2DC366-0EB8-4C2F-9E53-D8C9CD344082 Datensatztyp Eingang, Seitenlayout Eingangserfassung&amp;#10;&amp;#10; --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-786FCBC5-CE52-4971-B144-FC6344430D71 Eingangserfassung --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-54737FC1-15A4-454E-939F-F8BC29C80695 Kategorie Öffnungszeiten --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-C08036F0-F326-473F-B280-95EDAD880D36 Workflow-Regel Kategoriegruppe setzen --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-B67AC949-F979-4196-B873-7676FB144C58 Workflow Regel&amp;#10;Datensatztyp Filiale-Anfrage, Seitenlayout Filiale-Anfrage --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-F1A3849A-367B-48A7-AB86-8DD8C8F614E8 Bearbeiten --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-56CA19DF-05D4-4BB1-B72D-2493BA9C68F9 Sofortantwort --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-DD95B437-B292-4041-9BA5-518B6259179E Status &#x3D; Geschlossen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-9F6807C2-8A92-4C78-ADC3-EABD203B8938 Workflow Regel&amp;#10;E-Mail an Kunde senden --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}