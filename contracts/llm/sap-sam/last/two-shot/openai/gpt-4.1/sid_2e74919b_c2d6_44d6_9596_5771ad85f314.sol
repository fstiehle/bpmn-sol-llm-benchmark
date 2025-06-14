// test openai/gpt-4.1 - two-shot at 2025-06-12T00:17:07.964Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_2e74919b_c2d6_44d6_9596_5771ad85f314 {
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
    while(_tokenState != 0) {
      // sid-181F9D56-226F-4071-A541-5B34611F8C21: Auf Reservierung prufen
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for sid-181F9D56-226F-4071-A541-5B34611F8C21 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-E4C67638-32F7-4EF7-B567-F5CDC766B074: Freies Zimmer verfugbar
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-E4C67638-32F7-4EF7-B567-F5CDC766B074 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-95D5D543-0404-4C29-98F8-FD3EA102C79F: In anderes Hotel verwiesen
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-95D5D543-0404-4C29-98F8-FD3EA102C79F here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC: Schlussel aushandigen
      if (_tokenState & 64 == 64) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // ExclusiveGateway sid-A25E4563-B053-45A5-987B-A0B3D3B3CCCF
      if (_tokenState & 2 == 2) {
        // Evaluate conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 256;
          continue;
        }
        // Default: sid-053A56CF-EA09-4E3A-8A03-6F556AD327A2 -> sid-E4C67638-32F7-4EF7-B567-F5CDC766B074
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      // Converging Gateway sid-F42E8563-54A5-4CAD-B230-15AE7A37AE91
      if (_tokenState & 256 == 256) {
        // Activated by either sid-810917A0-3C19-4435-9F03-2FAFC8A4B811 or sid-E1240EF2-1366-4153-BB02-E538496BDDCC
        // Always transitions to sid-3791BA58-F1EE-48E9-A212-E6FBC50B3AAC
        _tokenState &= ~uint(256);
        _tokenState |= 64;
        continue;
      }
      // ExclusiveGateway sid-22F83BA6-496B-4257-ABA3-36229D63918F
      if (_tokenState & 16 == 16) {
        // Evaluate conditions & 2 == 2
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(16);
          _tokenState |= 256;
          continue;
        }
        // Default: sid-5C58D34C-EB8C-487B-A49E-F69E93E01FAA -> sid-95D5D543-0404-4C29-98F8-FD3EA102C79F
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // Converging Gateway sid-461AC4BA-58CF-4194-8464-2A0B8AD34054 (wait for 128)
      if (_tokenState & 128 == 128) {
        // End event: sid-AA48C9CC-A2B1-407A-B43B-64DD64D25E67
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}