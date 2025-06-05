// test GPT 4.1 - One Shot at 2025-06-05T15:17:22.448Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_PizzaDelivery {
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
      // <--- ChoreographyTask_0hy9n0g Order Pizza --->
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      // <--- Gateway_1td68h3 exclusive gateway --->
      if (_tokenState & 2 == 2) {
        // Conditional branch: Flow_0mkbrl0, conditionExpression: conditions & 1 == 1
        if (conditions & 1 == 1) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        } else {
          // Default branch: Flow_1uhdzct
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- ChoreographyTask_1b2vkz9 Confirm ETA --->
      if (_tokenState & 4 == 4) {
        if (id == 1 && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- ChoreographyTask_1jrfmx8 Announce Delivery --->
      if (_tokenState & 8 == 8) {
        if (id == 2 && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- Gateway_0x44u2n exclusive gateway --->
      if (_tokenState & 16 == 16) {
        // Only one outgoing (default) branch: Flow_16j5p8v to ChoreographyTask_1797ws1
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // <--- ChoreographyTask_1797ws1 Deliver Pizza --->
      if (_tokenState & 32 == 32) {
        if (id == 3 && msg.sender == participants[2]) {
          // Transition: deactivate current, activate next state (end event)
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}