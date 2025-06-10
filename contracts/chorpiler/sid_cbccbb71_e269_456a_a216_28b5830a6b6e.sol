//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_cbccbb71_e269_456a_a216_28b5830a6b6e {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;

  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-0E0AB809-88BB-4818-98B9-2DD76F51589B Meldungen an Energielieferanten --->
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
          // <--- sid-A75927CF-B968-4127-95A7-DAAD8F5DC7F1 Versand Mietvertrag --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-C8C25D75-E4F8-4B79-BDC1-1AC0392BE493 Scan Unterlagen für Mieterakt --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}