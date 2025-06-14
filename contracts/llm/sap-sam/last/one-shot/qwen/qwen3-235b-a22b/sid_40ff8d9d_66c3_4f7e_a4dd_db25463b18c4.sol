// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:16:02.315Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_40ff8d9d_66c3_4f7e_a4dd_db25463b18c4 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-40BF9CF5-D6A2-4E21-AD06-CDA7C72B12DD Dobijanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5B90747A-45E8-4321-AF21-353B3E5EB0AC Dobijanje detaljnog opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-6A5D6DBE-6950-4510-AB38-3701BB04ACE8 --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-301B4A0F-8429-4E38-9CD1-562D31F2A496 Prosleđivanje problema podršci --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-2C3B7CE5-0AB5-40CA-B685-8C9685F388DD Davanje rešenja opeateru --->
        if (5 == id && msg.sender == participants[9]) {
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-2B5B0EB1-CDDE-4904-8D35-A1AEBE009EC1 Objašnjavanje rešenja problema --->
        if (3 == id && msg.sender == participants[5]) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
