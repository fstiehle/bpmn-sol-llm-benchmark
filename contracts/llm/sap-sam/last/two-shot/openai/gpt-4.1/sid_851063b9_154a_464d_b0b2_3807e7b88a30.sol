// test openai/gpt-4.1 - two-shot at 2025-06-12T01:40:10.430Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_851063b9_154a_464d_b0b2_3807e7b88a30 {
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
        // <--- sid-B3B704F6_A4D9_4A05_AC7E_148AD86F62BA --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
        // <--- sid-FF1E089C_C290_4134_BBB5_49D2DB25CCF2 --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <---  auto transition to end --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition to end --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 2 == 2) {
        // <--- event-based gateway (sid-7B36D673_5B79_45DE_A171_D780235447B1) --->
        _tokenState &= ~uint(2);
        _tokenState |= 1;
        continue;
      }
      if (_tokenState & 1 == 0 && _tokenState & 2 == 0 && _tokenState & 4 == 0 && _tokenState & 8 == 0) {
        // Defensive: break if all tokens are zero (should not be needed, but prevents infinite loop)
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
