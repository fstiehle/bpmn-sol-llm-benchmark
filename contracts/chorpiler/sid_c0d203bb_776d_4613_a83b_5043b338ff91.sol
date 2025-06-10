//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_c0d203bb_776d_4613_a83b_5043b338ff91 {
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
        // <--- sid-AB82CBD9-256A-43CF-9C39-9F17C5717E92 T1 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
        // <--- sid-0237C4B1-AFFB-416D-ACD6-FEAC17B3CEEC T2 --->
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