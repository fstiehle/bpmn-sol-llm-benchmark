// test openai/gpt-4.1 - one-shot at 2025-06-11T23:42:47.103Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
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
        // <--- sid-AD166EA9_2459_45D4_BC9D_C7FC8B16A974 ParallelGateway (split) --->
        _tokenState &= ~uint(1);
        _tokenState |= 14;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-998BF84A_5A1B_4FC1_8D9D_35B23405CB1E Issue_Report_to_Client --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-840A8FCC_2211_467B_B180_1E77580E3EDF Issue_report_to_registry --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-78E1385A_0AF4_4CDC_967C_072B15693036 Issue_report_to_accounts_receivable --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 112 == 112) {
        // <--- sid-6DBB1636_2FE2_4C64_9097_C6A54D4763FC ParallelGateway (join) --->
        _tokenState &= ~uint(112);
        _tokenState |= 128;
        continue;
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-CF2F3CBB_0984_4988_A9FE_835E47F17907 EndEvent --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}