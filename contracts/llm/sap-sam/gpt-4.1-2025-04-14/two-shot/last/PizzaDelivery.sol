// test GPT Model - Two Shot at 2025-06-05T15:19:30.040Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_two_shot_PizzaDelivery {
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

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_0hy9n0g Order Pizza --->
        if (0 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- auto transition exclusiveGateway Gateway_1td68h3 to Gateway_0x44u2n --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          // <--- ChoreographyTask_1b2vkz9 Confirm ETA --->
          if (1 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
          }
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_1jrfmx8 Announce Delivery --->
        if (2 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_1797ws1 Deliver Pizza --->
        if (3 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}