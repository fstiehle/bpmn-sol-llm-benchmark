//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_9c37ce5d_c6a6_4081_8038_fecc320c4ae5 {
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
      if (_tokenState & 2 == 2) {
        // <--- sid-E2260B7C-2453-4ED3-8F1F-458552A96F90 Receive Transcription --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-5DFD2925-5FC4-49A5-A532-6E1895707F23 Receive Transcription --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- sid-4F7B8C9B-B728-4743-A6A1-8B0D37A9E487 Send Transcription Request --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}