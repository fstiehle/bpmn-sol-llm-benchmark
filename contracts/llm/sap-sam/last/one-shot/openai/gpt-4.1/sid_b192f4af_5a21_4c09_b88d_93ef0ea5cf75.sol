// test openai/gpt-4.1 - one-shot at 2025-06-12T00:05:57.197Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_b192f4af_5a21_4c09_b88d_93ef0ea5cf75 {
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
        // <--- sid-F4C29B8C-A023-4B13-94B5-CA7D86B750D0 Urlaubsantrag verschicken --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-5F82763E-0757-4DF2-84EC-A69E8AF996AE --->
        // Outgoing: sid-922C1C6E-75BF-4418-8E93-691D6582BE93 (default), sid-D24A3878-EF15-48E6-B229-01CE4BE05FA1 (condition: conditions & 1 == 1)
        bool matched = false;
        if (conditions & 1 == 1) {
          // <--- sid-D24A3878-EF15-48E6-B229-01CE4BE05FA1 --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          matched = true;
          continue;
        }
        if (!matched) {
          // <--- default sid-922C1C6E-75BF-4418-8E93-691D6582BE93 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A3A60CC3-879E-4AC6-97E6-B78183765622 bekommt Urlaub --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-89267EA4-E7DF-4BCE-A0E4-E2E12C60670F wird informiert, dass kein Urlaub --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- EndEvent sid-2C4B81C7-4AB1-4DB7-976B-C8593F45DACD --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}