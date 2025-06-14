// test openai/gpt-4.1 - one-shot at 2025-06-11T23:31:04.268Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2c3e9901_dd59_4292_a32a_d66611d73ffa {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-4A166C13-1A80-4F15-8144-B00BB9EB0B27 Vastaanota_tilaus --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task sid-4A166C13-1A80-4F15-8144-B00BB9EB0B27 here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- EXCLUSIVE GATEWAY sid-68A599B2_B51C_4BF3_8D27_53485E5009E4 --->
      if (_tokenState & 2 == 2) {
        // has two outgoing: sid-603CAF26-22D2-43C6-9760-9B69EF5FD1D3 (default), sid-7AF45A6B-2A91-4CC4-9F5B-1B195E096DE9 (condition: conditions & 1 == 1)
        bool transitioned = false;
        if ((conditions & 1 == 1)) {
          // sid-7AF45A6B-2A91-4CC4-9F5B-1B195E096DE9 to sid-3CC56E18-ED4C-4707-967E-8C4C476067C0
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default: sid-603CAF26-22D2-43C6-9760-9B69EF5FD1D3 to sid-6E4D3B42-B6A3-460A-BFEA-16916482A898
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- sid-3CC56E18-ED4C-4707-967E-8C4C476067C0 Laheta_lasku --->
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task sid-3CC56E18-ED4C-4707-967E-8C4C476067C0 here
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // <--- sid-6E4D3B42-B6A3-460A-BFEA-16916482A898 Informoi_asiakasta --->
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task sid-6E4D3B42-B6A3-460A-BFEA-16916482A898 here
          _tokenState &= ~uint(8);
          // This task leads to end event, so process ends
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-51D6AEC7-B161-4529-9AF1-3965EB576E91 Vastaanota_maksu --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task sid-51D6AEC7-B161-4529-9AF1-3965EB576E91 here
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-C3D62CC0-1119-4F36-AF35-7852DB9F7A5F Laheta_tilaus --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for task sid-C3D62CC0-1119-4F36-AF35-7852DB9F7A5F here
          _tokenState &= ~uint(32);
          // This task leads to end event, so process ends
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}