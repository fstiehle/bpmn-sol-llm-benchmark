// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:25:36.358Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_0de8854f_07eb_4d06_8e49_148a373df43a {
  uint public tokenState = 1;
  address[2] public participants;
  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_2A58777F_7651_4BB3_B240_7ECB47DD3D5B Entrega reportaje propio --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        id = 0;
        continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
