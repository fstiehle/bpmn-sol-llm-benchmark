// test GPT 4.1 - One Shot Revised at 2025-06-05T15:22:05.281Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_sid_e6317f9e_4d23_4a94_bc7b_f1e509cf531a {
  // tokenState holds the current active control flow positions (tasks/gateways)
  // Each bit represents a unique node; see mapping below:
  // 1: startEvent (sid-DB8F3733-4472-4A02-AFC7-B990B5DEF4D7)
  // 2: sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 (Request Reservation) [taskID 0]
  // 4: sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 (Inform Host) [taskID 1]
  // 8: sid-14F93670-7F19-4E8D-985B-652CC65D24D6 (Accept Reservation) [taskID 2]
  // 16: endEvent (sid-48A6CAB1-A0B4-401E-839C-53F0BD75FA14)

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

    while(_tokenState != 0) {
      // Start Event - sid-DB8F3733-4472-4A02-AFC7-B990B5DEF4D7
      if (_tokenState & 1 == 1) {
        // Immediately move to first task
        _tokenState &= ~uint(1);
        _tokenState |= 2; // activate sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9
        continue;
      }

      // <--- sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 (Request Reservation) --->
      if (_tokenState & 2 == 2) {
        // Only Guest (participants[0]) may enact
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4; // activate sid-5E7F8B9A-D08B-4075-A5AA-334D33017824
          continue;
        }
      }

      // <--- sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 (Inform Host) --->
      if (_tokenState & 4 == 4) {
        // Only ARS (participants[2]) may enact
        if (id == 1 && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8; // activate sid-14F93670-7F19-4E8D-985B-652CC65D24D6
          continue;
        }
      }

      // <--- sid-14F93670-7F19-4E8D-985B-652CC65D24D6 (Accept Reservation) --->
      if (_tokenState & 8 == 8) {
        // Only Host (participants[4]) may enact
        if (id == 2 && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16; // activate endEvent sid-48A6CAB1-A0B4-401E-839C-53F0BD75FA14
          continue;
        }
      }

      // End Event - sid-48A6CAB1-A0B4-401E-839C-53F0BD75FA14
      if (_tokenState & 16 == 16) {
        // Process terminates
        _tokenState = 0;
        break;
      }

      break;
    }

    tokenState = _tokenState;
  }
}