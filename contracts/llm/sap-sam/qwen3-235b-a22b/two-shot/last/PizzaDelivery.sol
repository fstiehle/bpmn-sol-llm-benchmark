// test large Model - Two Shot at 2025-06-05T15:25:37.974Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_two_shot_PizzaDelivery {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if ((_tokenState & 1) == 1) {
        // <--- ChoreographyTask_0hy9n0g Order Pizza --->
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 6;
          continue;
        }
      }

      if ((_tokenState & 6) == 6) {
        if ((conditions & 1) == 1) {
          // <--- auto transition via Flow_0mkbrl0 to Gateway_0x44u2n --->
          _tokenState &= ~uint(6);
          _tokenState |= 16;
          continue;
        } else {
          // <--- auto transition via Flow_1uhdzct (default) --->
          _tokenState &= ~uint(6);
          _tokenState |= 8;
          continue;
        }
      }

      if ((_tokenState & 8) == 8) {
        // <--- ChoreographyTask_1b2vkz9 Confirm ETA --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          _tokenState |= 4;
          continue;
        }
      }

      if ((_tokenState & 4) == 4) {
        // <--- ChoreographyTask_1jrfmx8 Announce Delivery --->
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          continue;
        }
      }

      if ((_tokenState & 2) == 2) {
        // <--- ChoreographyTask_1797ws1 Deliver Pizza --->
        if (id == 3 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // end reached
        }
      }

      if ((_tokenState & 16) == 16) {
        // <--- ChoreographyTask_1797ws1 Deliver Pizza --->
        if (id == 3 && msg.sender == participants[2]) {
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // end reached
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}