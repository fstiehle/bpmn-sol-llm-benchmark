// test GPT 4.1 - One Shot with easier example at 2025-06-02T19:31:13.276Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_easier_PizzaDelivery {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  /*
    taskID mapping:
    0: ChoreographyTask_0hy9n0g (Order Pizza)           - Customer (participants[0])
    1: ChoreographyTask_1b2vkz9 (Confirm ETA)           - Pizza Place (participants[1])
    2: ChoreographyTask_1jrfmx8 (Announce Delivery)     - Pizza Place (participants[1])
    3: ChoreographyTask_1797ws1 (Deliver Pizza)         - Delivery Boy (participants[2])
  */

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      // State 1: StartEvent -> ChoreographyTask_0hy9n0g (Order Pizza)
      if (_tokenState & 1 == 1) {
        // ChoreographyTask_0hy9n0g (Order Pizza), Customer
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Move token to Gateway_1td68h3 (state 2)
          continue;
        }
      }

      // State 2: Gateway_1td68h3 (exclusive)
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // If condition is met, take Flow_0mkbrl0 to Gateway_0x44u2n (state 4)
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // Default: Flow_1uhdzct (Pizza needs to be baked) to ChoreographyTask_1b2vkz9 (Confirm ETA) (state 8)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }

      // State 8: ChoreographyTask_1b2vkz9 (Confirm ETA), Pizza Place
      if (_tokenState & 8 == 8) {
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16; // Move token to ChoreographyTask_1jrfmx8 (Announce Delivery) (state 16)
          continue;
        }
      }

      // State 16: ChoreographyTask_1jrfmx8 (Announce Delivery), Pizza Place
      if (_tokenState & 16 == 16) {
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(16);
          _tokenState |= 4; // Move token to Gateway_0x44u2n (state 4)
          continue;
        }
      }

      // State 4: Gateway_0x44u2n (exclusive)
      if (_tokenState & 4 == 4) {
        // Only one outgoing, Flow_16j5p8v to ChoreographyTask_1797ws1 (Deliver Pizza)
        _tokenState &= ~uint(4);
        _tokenState |= 32; // state 32
        continue;
      }

      // State 32: ChoreographyTask_1797ws1 (Deliver Pizza), Delivery Boy
      if (_tokenState & 32 == 32) {
        if (id == 3 && msg.sender == participants[2]) {
          _tokenState &= ~uint(32);
          _tokenState = 0; // EndEvent reached
          break;
        }
      }

      break; // No matching state transition, exit loop
    }

    tokenState = _tokenState;
  }
}