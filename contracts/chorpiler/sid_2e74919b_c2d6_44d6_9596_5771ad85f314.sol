//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_2e74919b_c2d6_44d6_9596_5771ad85f314 {
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
        // <--- sid-181F9D56-226F-4071-A541-5B34611F8C21 Auf Reservierung prüfen&amp;#10; --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC Schlüssel aushändigen&amp;#10; --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
        else {
          // <--- sid-E4C67638-32F7-4EF7-B567-F5CDC766B074 Freies Zimmer verfügbar&amp;#10;&amp;#10;? --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 4;
          continue; 
        }
        else {
          // <--- sid-95D5D543-0404-4C29-98F8-FD3EA102C79F In anderes Hotel &amp;#10;&amp;#10;verwiesen&amp;#10; --->
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