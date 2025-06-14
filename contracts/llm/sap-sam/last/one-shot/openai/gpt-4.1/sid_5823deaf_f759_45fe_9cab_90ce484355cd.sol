// test openai/gpt-4.1 - one-shot at 2025-06-11T23:42:01.585Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_5823deaf_f759_45fe_9cab_90ce484355cd {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // T1 Propose supply plan (taskID:1)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for T1 Propose supply plan --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // T2 Reject proposal (taskID:2)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for T2 Reject proposal --->
        _tokenState &= ~uint(2);
        // End event reached
        _tokenState = 0;
        break;
        }
        // EBG1 (event-based gateway) logic
        // T3 Accept proposal (taskID:3)
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for T3 Accept proposal --->
        _tokenState &= ~uint(2);
        // End event reached
        _tokenState = 0;
        break;
        }
        // T4 Offer counter-proposal (taskID:4)
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for T4 Offer counter-proposal --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // T5 Accept counter-proposal (taskID:5)
      if (_tokenState & 4 == 4) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for T5 Accept counter-proposal --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
        // T6 Reject counter-proposal (taskID:6)
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for T6 Reject counter-proposal --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // ExclusiveGateway sid-5EE7F26E_1C5B_4A95_A958_C29C8597AC3C
      // Join for (A075BD13-EE40-48DB-B81B-F2ACBDF3DDC2) and (1708F582-29CF-4CCD-BA68-9EF7AAA94E72)
      if (_tokenState & 8 == 8) {
        // This path leads to end event
        _tokenState &= ~uint(8);
        _tokenState = 0;
        break;
      }
      if (_tokenState & 16 == 16) {
        // This path leads to end event
        _tokenState &= ~uint(16);
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}