// test large Model - One Shot at 2025-06-02T19:32:55.025Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_PizzaDelivery {
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
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_0hy9n0g Order Pizza --->
        if (id == 0 && msg.sender == participants[0]) {
          // Execute task logic
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // Check exclusive gateway Gateway_1td68h3 outgoing conditions
        if ((conditions & 1) == 1) {
          // Follow Flow_0mkbrl0 pizza ready
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          // Default flow Flow_1uhdzct Pizza needs to be baked
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_1b2vkz9 Confirm ETA --->
        if (id == 1 && msg.sender == participants[1]) {
          // Execute task logic
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_1jrfmx8 Announce Delivery --->
        if (id == 2 && msg.sender == participants[1]) {
          // Execute task logic
          _tokenState &= ~uint(16);
          _tokenState |= 8;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // Check exclusive gateway Gateway_0x44u2n outgoing conditions
        // No condition expressions, default flow is Flow_16j5p8v
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        continue;
      }

      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_1797ws1 Deliver Pizza --->
        if (id == 3 && msg.sender == participants[2]) {
          // Execute task logic
          _tokenState &= ~uint(32);
          break; // End state
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}