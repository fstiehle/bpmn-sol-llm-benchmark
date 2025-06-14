// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:29:31.029Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_11f0cab7_e752_4a13_a29e_8f10522dbf7c {
  uint public tokenState = 1;
  address[6] public participants;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-AA44568D-5035-44C0-8246-D77923A55BA9 Valmista tilaus --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-20230D00-F9D9-47B6-BAFE-240BE7CB4629 Toimita tilaus --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-D2F30525-F046-49E3-BE41-251A9EA9B440 Vastaanota maksu --->
        if (3 == id && msg.sender == participants[4]) {
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
