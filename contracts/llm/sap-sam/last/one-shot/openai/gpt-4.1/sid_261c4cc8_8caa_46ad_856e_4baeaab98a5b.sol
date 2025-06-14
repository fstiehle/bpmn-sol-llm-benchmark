// test openai/gpt-4.1 - one-shot at 2025-06-11T23:30:16.866Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_261c4cc8_8caa_46ad_856e_4baeaab98a5b {
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
        // <--- sid_5D419652_4651_4347_A1C6_ACFA000AD990 Get Game --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task Get Game here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_749D18D6_E427_451B_9BCF_5F9663403EEB List Users --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task List Users here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_7881B66F_CCD2_4ECC_87E4_0BB37991A5FC Update Game --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task Update Game here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}