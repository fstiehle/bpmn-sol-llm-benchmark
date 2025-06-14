// test openai/gpt-4.1 - one-shot at 2025-06-12T00:03:17.126Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a3c861e3_72c1_49c6_b1cc_e5a9a8c1e972 {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- event based gateway sid_104B5171_075C_4A0F_852E_0F94E5A34A83 --->
        // This is an event-based gateway, activating either Task 1 or Task 2
        // Outgoing to: sid-984B95C1_C450_4BCC_A703_06A3F1E372B8 (bit 2), sid-74D17AC8_A5F1_49EC_AD9E_66623C00824A (bit 4)
        // Both flows are enabled, but only one can be triggered by enact
        if (id == 1) {
          // Task 1 executed, so enable bit 2
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
        if (id == 2) {
          // Task 2 executed, so enable bit 4
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_984B95C1_C450_4BCC_A703_06A3F1E372B8 --->
        // ChoreographyTask, taskID 1, initiator participants[0]
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task 1 here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8; // enable bit for next flow (to end)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_74D17AC8_A5F1_49EC_AD9E_66623C00824A --->
        // ChoreographyTask, taskID 2, initiator participants[2]
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task 2 here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16; // enable bit for next flow (to end)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sequenceFlow to end from task 1 --->
        // End event reached, terminate
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break;
      }
      if (_tokenState & 16 == 16) {
        // <--- sequenceFlow to end from task 2 --->
        // End event reached, terminate
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}