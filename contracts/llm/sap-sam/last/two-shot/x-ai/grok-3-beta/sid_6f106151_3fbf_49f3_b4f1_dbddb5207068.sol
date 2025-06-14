// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:39:05.305Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_6f106151_3fbf_49f3_b4f1_dbddb5207068 {
  uint public tokenState = 1; // Start with the start event active
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
        // <--- sid-3C58D5A9-4A5D-4784-93F5-2EEAD658E4F7 Kunde stellt Antragsformular --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Move to exclusive gateway
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-0C2844F3-8362-40EC-9404-AEE6DE89F808 Exclusive Gateway --->
        if (conditions & 1 == 1) {
          // <--- auto transition for condition --->
          _tokenState &= ~uint(2);
          _tokenState |= 4; // Move to task sid-05B396A1-4772-44AB-B4E2-21384E0A5D44
          continue;
        } else {
          // <--- auto transition for default path --->
          _tokenState &= ~uint(2);
          _tokenState |= 8; // Move to task sid-D836F160-E1FA-4B10-9270-C224CAAA4139
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-05B396A1-4772-44AB-B4E2-21384E0A5D44 Informieren ueber zustimmen --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0; // Move to end event, terminate
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-D836F160-E1FA-4B10-9270-C224CAAA4139 Informieren ueber Ablehnung --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0; // Move to end event, terminate
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}