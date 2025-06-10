//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_e9710829_7fee_4715_b42a_e02beeec0880 {
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
        // <--- sid-4513049E-1B4A-4ECD-B6B2-2128DE4722D8 Prüfe Vollständigkeit der Anfrage --->
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
          // <--- sid-3F08F667-1697-4B4B-8B32-49E343BF67BA Angebot erstellen --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-79E7F796-A3FA-443F-81E7-46F319C2053A Anfrage ablehnen --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 2 == 2) {
          // <--- sid-9F0F5E46-643F-4042-89F2-9954894766D8 Angebot abschließen --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-E227F0D6-458E-4922-A634-DAD8E16397C1 Buchungen durchführen --->
          if (4 == id && msg.sender == participants[6]) {
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