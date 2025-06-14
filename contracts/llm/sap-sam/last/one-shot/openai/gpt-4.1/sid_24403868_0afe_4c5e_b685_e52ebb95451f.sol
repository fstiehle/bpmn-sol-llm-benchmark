// test openai/gpt-4.1 - one-shot at 2025-06-11T23:29:25.524Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_24403868_0afe_4c5e_b685_e52ebb95451f {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  /// Mapping:
  /// 1: sid-B0088207-16F2-4C56-AC8F-494C5DBA1D67 (Show_the_identification_bar_code, initiator: participants[0])
  /// 2: sid-A6349677-B303-4D32-B0BF-F557E65B4413 (Prepare_Pacient, initiator: participants[3])
  /// 3: sid-1B5AC045-4A0A-469C-9621-4018F96D49BF (Save_Measure, initiator: participants[5])
  /// 4: sid-8951E658-7F6E-4C78-9DFA-0759D97C0BFB (Measure_Height, initiator: participants[7])
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B0088207_16F2_4C56_AC8F_494C5DBA1D67 Show_the_identification_bar_code --->
        if (1 == id && msg.sender == participants[0]) {
          // custom code for Show_the_identification_bar_code here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-A6349677_B303_4D32_B0BF_F557E65B4413 Prepare_Pacient --->
        if (2 == id && msg.sender == participants[3]) {
          // custom code for Prepare_Pacient here
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-8951E658_7F6E_4C78_9DFA_0759D97C0BFB Measure_Height --->
        if (4 == id && msg.sender == participants[7]) {
          // custom code for Measure_Height here
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-1B5AC045_4A0A_469C_9621_4018F96D49BF Save_Measure --->
        if (3 == id && msg.sender == participants[5]) {
          // custom code for Save_Measure here
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}