//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_d6eaf6eb_51ba_4071_8ecf_c5e4e25bf2e8 {
  uint public tokenState = 1;
  address[5] public participants;
  uint public conditions;

  constructor(address[5] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-FD51FAAB-9476-488F-B47D-49BAF8EF96F3 Use Service --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F5D038E7-BA6F-4A99-806A-6769542ACE1F Provide Service --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}