// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:34:41.915Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_587b855e_e0fe_469a_98d4_8f7c3f2307d4 {
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
      if (_tokenState & 2 == 2) {
        // <--- sid-998BF84A-5A1B-4FC1-8D9D-35B23405CB1E Issue Report to Client --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-840A8FCC-2211-467B-B180-1E77580E3EDF Issue report to registry --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-78E1385A-0AF4-4CDC-967C-072B15693036 Issue report to accounts receivable --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- auto transition from Start Event to Parallel Gateway Diverging --->
        _tokenState &= ~uint(1);
        _tokenState |= 14; // Activate all outgoing paths (2, 4, 8)
        continue;
      }
      if (_tokenState & 112 == 112) {
        // <--- auto transition from Parallel Gateway Converging to End Event --->
        _tokenState &= ~uint(112); // Clear bits 16, 32, 64
        _tokenState |= 0; // Terminate process
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}