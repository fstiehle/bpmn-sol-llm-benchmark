// test openai/gpt-4.1 - one-shot at 2025-06-11T23:32:29.875Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2e74919b_c2d6_44d6_9596_5771ad85f314 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // sid-181F9D56-226F-4071-A541-5B34611F8C21 (taskID 1) - Auf Reservierung prufen
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Gateway sid-A25E4563-B053-45A5-987B-A0B3D3B3CCCF (bit 2)
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        // condition: conditions & 1 == 1 -> sid-F42E8563-54A5-4CAD-B230-15AE7A37AE91 (bit 16)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          transitioned = true;
        }
        // default: sid-E4C67638-32F7-4EF7-B567-F5CDC766B074 (bit 4)
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      // sid-E4C67638-32F7-4EF7-B567-F5CDC766B074 (taskID 3) - Freies Zimmer verfugbar
      if (_tokenState & 4 == 4) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code here
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Gateway sid-22F83BA6-496B-4257-ABA3-36229D63918F (bit 8)
      if (_tokenState & 8 == 8) {
        bool transitioned = false;
        // condition: conditions & 2 == 2 -> sid-F42E8563-54A5-4CAD-B230-15AE7A37AE91 (bit 16)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          transitioned = true;
        }
        // default: sid-95D5D543-0404-4C29-98F8-FD3EA102C79F (bit 32)
        if (!transitioned) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
        }
        continue;
      }
      // sid-95D5D543-0404-4C29-98F8-FD3EA102C79F (taskID 4) - In anderes Hotel verwiesen
      if (_tokenState & 32 == 32) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code here
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Gateway sid-F42E8563-54A5-4CAD-B230-15AE7A37AE91 (bit 16)
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        continue;
      }
      // sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC (taskID 2) - Schlussel aushandigen
      if (_tokenState & 64 == 64) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code here
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Gateway sid-461AC4BA-58CF-4194-8464-2A0B8AD34054 (bit 128)
      if (_tokenState & 128 == 128) {
        // end event reached
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}