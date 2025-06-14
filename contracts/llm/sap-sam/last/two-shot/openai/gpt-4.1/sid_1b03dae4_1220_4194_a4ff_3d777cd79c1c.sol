// test openai/gpt-4.1 - two-shot at 2025-06-12T00:11:35.755Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_1b03dae4_1220_4194_a4ff_3d777cd79c1c {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-A7638941-30FE-45AC-A612-C227C72D5F76 M1 --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task M1 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // Parallel Gateway sid-00E07E95-7526-4B8C-BACC-C00BBAB4E570 (Diverging)
      if (_tokenState & 2 == 2) {
        // split: activate both sid-1071CFC9-F879-43FC-9065-70097B82BD19 and sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF
        _tokenState &= ~uint(2);
        _tokenState |= 4 | 8;
        continue;
      }
      // <--- sid-1071CFC9-F879-43FC-9065-70097B82BD19 M4 --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task M4 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF M2 --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task M2 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E M3 --->
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task M3 here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // Parallel Gateway sid-95EDDF96-752C-4BC2-AB18-629BE80CE91F (Converging)
      if (_tokenState & 80 == 80) {
        // join: both sid-1071CFC9-F879-43FC-9065-70097B82BD19 (bit 16) and sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E (bit 64) must be set, then move to sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31
        _tokenState &= ~uint(80);
        _tokenState |= 128;
        continue;
      }
      // <--- sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31 M5 --->
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task M5 here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}