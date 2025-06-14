// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:39:37.283Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_729fde80_4806_4bce_ba45_822dd31ce731 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-2C952487-1897-4703-BD14-C00233174A01 Bewerbungsunterlagen senden & bestaetigen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-AFF80938-EACE-4704-B168-6FD41D6291B8 Fehlende Unterlagen anfordern & senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-B48DD1CF-E421-40C5-A189-47AA16B2A21B Zusage senden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-93A5BA57-9EB7-44C2-A54E-FF1D2FB83C26 Absage senden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- auto transition for sid-21D2131C-ACF9-43B0-AFA9-110E5D90F751 condition path --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <--- auto transition for sid-21D2131C-ACF9-43B0-AFA9-110E5D90F751 default path --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- auto transition for sid-4D98FF7B-B8C8-4409-B650-BD9453EAA0F0 --->
        _tokenState &= ~uint(8);
        _tokenState |= 256;
        continue; 
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          // <--- auto transition for sid-2D7C485D-0A1F-445E-BC1A-F3FE4B32D074 condition path --->
          _tokenState &= ~uint(256);
          _tokenState |= 16;
          continue; 
        } else {
          // <--- auto transition for sid-2D7C485D-0A1F-445E-BC1A-F3FE4B32D074 default path --->
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- auto transition for sid-8AEE2A64-582E-4A38-8AEA-236E11A012DC --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 128 == 128) {
        // <--- auto transition for sid-8AEE2A64-582E-4A38-8AEA-236E11A012DC --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}