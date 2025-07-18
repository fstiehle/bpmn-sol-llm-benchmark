//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_926e6635_4ca0_494a_9be5_5ebe28fa8c6d {
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
        // <--- sid-984B95C1-C450-4BCC-A703-06A3F1E372B8  --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A  --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1 == 1) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue; 
      }
      break;
    }

    tokenState = _tokenState;
  }

}