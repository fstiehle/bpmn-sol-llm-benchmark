//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_401c962b_d385_4a39_8601_bc8c92fffc20 {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;

  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 2 == 2) {
        // <--- sid-3AD9F529-B32A-4E6C-A6D1-D567688AD463 Call decision --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-6E5C9418-EE6F-4ED9-9A40-F57E2E6489DE Call decision --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1 == 1) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1);
        _tokenState |= 10;
        continue; 
      }
      if (_tokenState & 20 == 20) {
        // <---  auto transition  --->
        _tokenState &= ~uint(20);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }

    tokenState = _tokenState;
  }

}