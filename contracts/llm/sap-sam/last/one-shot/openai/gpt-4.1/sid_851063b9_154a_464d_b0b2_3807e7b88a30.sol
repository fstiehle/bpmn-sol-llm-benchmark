// test openai/gpt-4.1 - one-shot at 2025-06-11T23:54:13.209Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
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
        // <--- sid-7B36D673_5B79_45DE_A171_D780235447B1 event-based gateway --->
        // event-based gateway: diverging
        // No conditionExpressions, so both outgoing flows are possible
        // Activate both outgoing tasks concurrently
        _tokenState &= ~uint(1);
        _tokenState |= 2 | 4;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-B3B704F6_A4D9_4A05_AC7E_148AD86F62BA choreography task --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task sid-B3B704F6_A4D9_4A05_AC7E_148AD86F62BA --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-FF1E089C_C290_4134_BBB5_49D2DB25CCF2 choreography task --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task sid-FF1E089C_C290_4134_BBB5_49D2DB25CCF2 --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- End event for sid-B3B704F6_A4D9_4A05_AC7E_148AD86F62BA path --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break;
      }
      if (_tokenState & 16 == 16) {
        // <--- End event for sid-FF1E089C_C290_4134_BBB5_49D2DB25CCF2 path --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}