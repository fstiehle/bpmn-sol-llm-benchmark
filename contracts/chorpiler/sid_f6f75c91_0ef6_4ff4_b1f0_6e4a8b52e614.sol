//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_f6f75c91_0ef6_4ff4_b1f0_6e4a8b52e614 {
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
        // <--- sid-99BB2DE8-0810-46E3-B30C-2512AB61C00A Validate Academic Transcripts --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-E6072FFC-EB5F-4F80-88C5-ED1470CA99BE Verify English language test result --->
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