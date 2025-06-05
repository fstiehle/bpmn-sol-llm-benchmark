// test GPT 4.1 - One Shot Revised at 2025-06-05T15:21:33.330Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_PizzaDelivery {
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
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway_1td68h3 exclusive gateway --->
        bool transitioned = false;
        // Conditional outgoing: Flow_0mkbrl0
        if (conditions & 1 == 1) {
          // auto transition to Gateway_0x44u2n
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
        }
        // Default outgoing: Flow_1uhdzct to ChoreographyTask_1b2vkz9
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
        }
        if (transitioned) continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_1b2vkz9 Confirm ETA --->
        if (id == 1 && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_1jrfmx8 Announce Delivery --->
        if (id == 2 && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(16);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Gateway_0x44u2n exclusive gateway --->
        // Default outgoing: Flow_16j5p8v to ChoreographyTask_1797ws1
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_1797ws1 Deliver Pizza --->
        if (id == 3 && msg.sender == participants[2]) {
          // Transition: deactivate current, process ends
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