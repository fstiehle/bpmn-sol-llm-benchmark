//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_bb98ad40_4367_4076_ba83_dc115385b31f {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 2 == 2) {
        // <--- sid-1DD77D45-C283-496D-93C9-BCC7AB51CE78 Valitse käyttöaika --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EFC80793-ED99-4698-BF1A-35834474426B Syötä tiedot --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-2970602A-4361-4A6B-B02B-872BC7F94F2C Lähetä pyöräilijätunnukset --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        break; // is end
        }
      }
      if (_tokenState & 48 == 48) {
        // <--- sid-DFCBB94B-43EB-4AF6-9E65-CE539A4F5143 Syötä tunnukset --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(48);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-CD955ECD-DF05-404E-9C19-88C7DD9D0453 Hyväksy palautus --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1 == 1) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1);
        _tokenState |= 34;
        continue; 
      }
      break;
    }

    tokenState = _tokenState;
  }

}