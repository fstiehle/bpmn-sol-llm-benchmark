//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_7dd609da_b461_4317_8d21_aa67f3d3c43c {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-D8DF7A5B-B137-4687-A879-69C850052582 Prijavljivanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-57A72721-2BE2-4D5C-B58E-5A4A1348616A Dobijanje detaljnog opisa problema --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B  --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-F090F35F-F607-4150-ADBD-5618474E68B2 Konsultovanje tehnicke podrske --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-4E287ACC-E235-4363-97B3-7E34EA6B639B Dostavljanje resenja --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}