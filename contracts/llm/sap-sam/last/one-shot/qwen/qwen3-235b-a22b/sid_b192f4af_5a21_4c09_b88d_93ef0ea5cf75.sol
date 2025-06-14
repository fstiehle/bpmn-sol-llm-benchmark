// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:33:27.224Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_b192f4af_5a21_4c09_b88d_93ef0ea5cf75 {
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
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5F82763E-0757-4DF2-84EC-A69E8AF996AE --->
        _tokenState &= ~uint(2);
        if (conditions & 1 == 1) {
          _tokenState |= 8;
        } else {
          _tokenState |= 4;
        }
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A3A60CC3-879E-4AC6-97E6-B78183765622 bekommt Urlaub --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        break; // is end
        }
        break;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-89267EA4-E7DF-4BCE-A0E4-E2E12C60670F wird informiert dass kein Urlaub --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        break; // is end
        }
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
