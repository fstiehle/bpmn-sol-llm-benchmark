// test openai/gpt-4.1 - two-shot at 2025-06-12T02:00:34.478Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_b192f4af_5a21_4c09_b88d_93ef0ea5cf75 {
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
        bool transitioned = false;
        if ((conditions & 1 == 1)) {
          // <--- sid-D24A3878-EF15-48E6-B229-01CE4BE05FA1, to sid-89267EA4-E7DF-4BCE-A0E4-E2E12C60670F --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
        }
        if (!transitioned) {
          // <--- default sid-922C1C6E-75BF-4418-8E93-691D6582BE93, to sid-A3A60CC3-879E-4AC6-97E6-B78183765622 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A3A60CC3-879E-4AC6-97E6-B78183765622 bekommt Urlaub --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-89267EA4-E7DF-4BCE-A0E4-E2E12C60670F wird informiert, dass kein Urlaub --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
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