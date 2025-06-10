//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_a451ac4c_9f1c_4c6c_8bba_955fbad275cd {
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
        // <--- sid-108E4ABE-4DB0-44C2-8647-91EC4B6524B7 Ware reklamieren --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-813DE3BA-8680-45CB-925D-ED87F741FA23 Retour-Etikett erstellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EEE1B15D-5719-483C-8B5A-55043DDC82FA Ware abschicken --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <--- sid-FB127610-7505-4F9E-ACA7-836BB1D685A4 Ware zurück --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-429BDAF2-1423-458C-B9EB-EBC8FE1DA435 Geld zurück --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
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