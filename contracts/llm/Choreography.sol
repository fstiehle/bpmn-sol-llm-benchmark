//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LLM_Choreography {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }

  function setconditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Check availability of goods --->
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusiveGateway condition check --->
        if (conditions & 1 == 1) {
          // <--- Flow_067nql1 available --->
          _tokenState &= ~uint(2);
          _tokenState |= 64;
          continue;
        } else {
          // <--- Flow_0ymdsa2 unavailable --->
          _tokenState &= ~uint(2);
          _tokenState |= 20;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 2 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 3 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8 && _tokenState & 32 == 32) {
        // <--- parallelGateway auto transition --->
        _tokenState &= ~uint(40);
        _tokenState |= 64;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 4 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}