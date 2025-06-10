//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_b992fcba_3f85_4a2f_bfc4_782da54bec68 {
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
        // <--- sid-FBF783FC-1F88-4FD7-B0D9-03920D7A5E2A  --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-F4EB048D-EF0C-4D2C-A5D6-F7A480DAB1E4  --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 20 == 20) {
        // <---  auto transition  --->
        _tokenState &= ~uint(20);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 1 == 1) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1);
        _tokenState |= 10;
        continue; 
      }
      break;
    }

    tokenState = _tokenState;
  }

}