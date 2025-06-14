// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T05:35:56.145Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_106dc1f8_9c56_4ddc_85fd_0ff7dbd0977b {
  uint public tokenState = 1;
  address[19] public participants;
  uint public conditions;
  constructor(address[19] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-23A82866-0FE2-412A-9B17-9FE6E46FCEA3 Donationbutton anklicken --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-1E986972-CECF-4DC9-8AC7-3BC8307E90C4 leiten auf neue webseite weiter --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-E48D12F9-BFD7-4A0C-8FB6-FD0EE5A205BC Daten ausfuellen --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-F6B8C1EE-C239-4E8C-9AF3-246ED438A4BC Spende uebermitteln --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-53FE6C01-E4D5-4716-A00E-F84996F2BC00 Spende erhalten --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-795BDE4F-A952-455E-887A-EA41B29BCBF2 Spende im Stream anzeigen --->
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-BCB18608-A5AB-4284-A4C9-1A81DA0CB9E5 Donation vorlesen --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-D7A36BA5-1446-4C4A-AD55-69BDBAE7A8CA Donation wird nicht vorgelesen --->
        if (8 == id && msg.sender == participants[15]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-40900C5F-68C8-458E-9723-9751E9F15431 Zahlung abgelehnt --->
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue; 
        }
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 1024;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          continue; 
        }
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
