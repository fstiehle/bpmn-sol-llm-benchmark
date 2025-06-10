//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_ed8dea2c_64c3_4b90_a62f_5aad9cfeb92c {
  uint public tokenState = 1;
  address[2] public participants;
  uint public conditions;

  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-5FDEB9B4-AB05-4317-BC20-4D5B4C8A905E Cancel Application --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}