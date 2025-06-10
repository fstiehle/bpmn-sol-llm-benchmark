//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_cd5e6cc0_d59c_4bae_9922_f027f6369b8e {
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
        // <--- sid-5263A40D-8891-4DBB-9753-E08829F913C8 Übertragung Dokument --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-D70E8DC2-B36B-421E-B503-FBC9E02A9441 Überprüfung des Dokuments --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 2 == 2) {
          // <--- sid-B1DDCDBA-51A9-46AA-B8E9-75EBAC9A065E Mitarbeiter informieren --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-C7C16036-0CCC-4182-A2CF-87037DA4618E Dokument überarbeiten --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 1;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
        else {
          // <--- sid-474C3F6D-654F-4DC4-B6A4-B46A12DBA8DD Informierung --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}