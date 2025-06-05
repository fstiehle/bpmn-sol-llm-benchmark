// test GPT 4.1 - One Shot Revised at 2025-06-05T15:28:01.935Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_rev_sid_e6317f9e_4d23_4a94_bc7b_f1e509cf531a {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;

  constructor(address[6] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 Request Reservation --->
        if (0 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 Inform Host --->
        if (1 == id && msg.sender == participants[2]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-14F93670-7F19-4E8D-985B-652CC65D24D6 Accept Reservation --->
        if (2 == id && msg.sender == participants[4]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}