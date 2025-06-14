// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T07:24:51.904Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_9ad64969_60c2_43c3_9b9e_05ffbbfd375c {
  uint public tokenState = 1;
  address[2] public participants;
  uint public conditions;
  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-C3E521CC-C26D-4D59-B7EF-2619EC56954B Paga Fotografo --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
