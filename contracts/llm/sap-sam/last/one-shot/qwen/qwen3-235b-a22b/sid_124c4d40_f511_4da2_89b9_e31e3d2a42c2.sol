// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:29:56.111Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_124c4d40_f511_4da2_89b9_e31e3d2a42c2 {
  uint public tokenState = 1;
  address[4] public participants;
  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-D8555B72-6BD1-4CB3-A08C-30B797457ED0 Vastaanota korvaushakemus --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5C7DD1FE-1B2E-407E-A681-B6F3E3B52681 Lähetä kirje --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
