//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_ddb5e175_a293_49ef_a28e_f8c1387c5950 {
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
        // <--- sid-DE929B07-533B-4044-87BD-A359469AF3F6 Track Invoice --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
        // <--- sid-1B29978D-2685-4B20-8D13-16B19F328B8B Track Invoice --->
        if (2 == id && msg.sender == participants[2]) {
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