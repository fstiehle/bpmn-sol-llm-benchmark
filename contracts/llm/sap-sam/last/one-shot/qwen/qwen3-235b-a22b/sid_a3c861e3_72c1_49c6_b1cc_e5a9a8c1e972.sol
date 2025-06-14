// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:00:35.167Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_a3c861e3_72c1_49c6_b1cc_e5a9a8c1e972 {
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
        // <--- sid-104B5171-075C-4A0F-852E-0F94E5A34A83 --->
        // <--- exclusive gateway logic --->
        // <--- sid-EA585473-9B80-46BA-BFF6-C23C8F82A351 --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-984B95C1-C450-4BCC-A703-06A3F1E372B8 --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-74D17AC8-A5F1-49EC-AD9E-66623C00824A --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 6 == 6) {
        // <--- sid-F26E8BD4-FFE5-4668-B2A9-D56B8FF8F57C --->
        // <--- sid-F8C236B9-4DB4-4C06-A102-591F1E82BA93 --->
        // <--- auto transition  --->
        _tokenState &= ~uint(6);
        _tokenState |= 2 | 4;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-D104672B-AA4B-4A22-AC94-9B8B2AFBDEC4 --->
        // <--- end event --->
        _tokenState &= ~uint(8);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
