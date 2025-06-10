//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_db1fe3a1_1292_420f_821e_b98779a2caed {
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
      if (_tokenState & 1 == 1) {
        if (conditions & 1 == 1) {
          // <--- sid-B4127651-BE41-4C45-91E8-86C965F70A22 ewq --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-B201CAE0-380C-4C35-BA32-26901B84BDC1 qwe --->
          if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
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