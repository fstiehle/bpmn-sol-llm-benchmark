// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T13:40:00.966Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_802c863c_4e9f_4fd4_91a3_c6441402a47b {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-E28CC24B-AC58-49CC-BFFA-0D9EF3EF42BE Änderungsvorschlag kommunizieren --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1 Besprechung ansetzen --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-E9C763EC-A03F-4549-A09D-A01F35017123 Information --->
        if (3 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(4);
        _tokenState |= 512;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-A216BD63-B9E5-49FE-9886-390805B714A1 Vorschlag bearbeiten --->
        if (4 == id && msg.sender == participants[9]) {
        _tokenState &= ~uint(8);
        if ((_tokenState & 16) == 0) {
          _tokenState |= 64;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-2BD93612-BF47-4CC1-A8AF-29908F355C95 Vorschlag bearbeiten --->
        if (5 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(16);
        if ((_tokenState & 8) == 0) {
          _tokenState |= 64;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <---  auto transition  --->
        _tokenState &= ~uint(32);
        _tokenState |= 8 | 16;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          continue; 
        } else {
          _tokenState &= ~uint(128);
          _tokenState |= 2;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue; 
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 4;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
