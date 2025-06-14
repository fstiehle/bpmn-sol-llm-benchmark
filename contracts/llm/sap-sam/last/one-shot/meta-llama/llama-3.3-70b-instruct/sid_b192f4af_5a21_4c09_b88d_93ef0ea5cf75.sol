// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:13:20.672Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_b192f4af_5a21_4c09_b88d_93ef0ea5cf75 {
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
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid_F4C29B8C_A023_4B13_94B5_CA7D86B750D0 Urlaubsantrag verschicken --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- exclusive gateway --->
        if (conditions & 1 == 1) {
          // <--- auto transition to sid_A3A60CC3_879E_4AC6_97E6_B78183765622 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // <--- auto transition to sid_89267EA4_E7DF_4BCE_A0E4_E2E12C60670F --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_sid_A3A60CC3_879E_4AC6_97E6_B78183765622 bekommt Urlaub --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_sid_89267EA4_E7DF_4BCE_A0E4_E2E12C60670F wird informiert, dass kein Urlaub --->
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
