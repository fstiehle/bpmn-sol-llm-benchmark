//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_a3c861e3_72c1_49c6_b1cc_e5a9a8c1e972 {
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
        // <--- sid-984B95C1-C450-4BCC-A703-06A3F1E372B8  --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
        // <--- sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A  --->
        if (2 == id && msg.sender == participants[2]) {
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