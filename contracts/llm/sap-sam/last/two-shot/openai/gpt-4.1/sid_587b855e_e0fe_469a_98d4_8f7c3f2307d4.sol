// test openai/gpt-4.1 - two-shot at 2025-06-12T01:06:38.346Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
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
      // sid-998BF84A-5A1B-4FC1-8D9D-35B23405CB1E Issue Report to Client
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-840A8FCC-2211-467B-B180-1E77580E3EDF Issue report to registry
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-78E1385A-0AF4-4CDC-967C-072B15693036 Issue report to accounts receivable
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // Parallel Gateway (Split) sid-AD166EA9_2459_45D4_BC9D_C7FC8B16A974: start to 3 branches
      if (_tokenState & 1 == 1) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1);
        _tokenState |= 14;
        continue;
      }
      // Join Gateway sid-6DBB1636_2FE2_4C64_9097_C6A54D4763FC (wait for 3 branches)
      if (_tokenState & 112 == 112) {
        // <---  auto transition  --->
        _tokenState &= ~uint(112);
        _tokenState |= 128;
        continue;
      }
      // End event
      if (_tokenState & 128 == 128) {
        // <---  auto transition to end --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}