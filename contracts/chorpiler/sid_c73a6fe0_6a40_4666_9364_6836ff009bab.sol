//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_c73a6fe0_6a40_4666_9364_6836ff009bab {
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
        // <--- sid-CE03D45F-F541-4A08-A961-FA7E205F2C73 Bewerbungsunteragen und Bestätigung --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-C84783A2-BE6C-464D-AFF1-2E79F45ACB40 Eingangsbestätigung --->
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
          // <--- sid-0E20ACC2-E5A7-4052-B208-0137C597D13D Zusage --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        if (conditions & 1 == 1) {
          // <--- sid-736441D9-361D-43CA-8A3C-F8ED7C9DB268 fehlende Unterlagen --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-FE844D7A-DA28-46A1-850E-B2472D988D44 Absage --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
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