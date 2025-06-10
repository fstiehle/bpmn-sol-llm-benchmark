//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_ddcfd384_6986_4905_b24f_03c8eff01a11 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-148138CE-2221-43DE-B39D-7F78C1580DF7 Seminaranfrage stellen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-80ED5C1A-2362-4C29-BD41-72FACCCC9DE5 Angebot senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-137F4E2C-AB5C-44D2-AC58-AB814D4C9B7C Angebot annehmen --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-534340E3-960F-4527-8548-08118BCFA486 Spezielle Wünsche&amp;#10;mitteilen --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 2;
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