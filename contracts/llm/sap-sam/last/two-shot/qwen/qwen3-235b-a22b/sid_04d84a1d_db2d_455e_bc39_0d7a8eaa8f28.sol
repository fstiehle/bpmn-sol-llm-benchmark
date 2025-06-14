// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T04:46:45.022Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_04d84a1d_db2d_455e_bc39_0d7a8eaa8f28 {
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
        // <--- sid-DAA1FC43-E64B-4597-9935-D15DD6D869C3 Bewerbung senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-2DE2BB21-137D-44A2-A7FD-24BA6A4B7516 Anforderung fehlender Unterlagen senden --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-8E58B1FD-D6B0-4ADA-B23E-BC2C3A57D647 Anforderung fehlender Unterlagen und fehlende Unterlagen senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(512);
          _tokenState |= 4096;
          continue; 
        } else {
          // <---  auto transition (default) --->
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-BDE1D3D8-4D00-4E32-9797-AFB900D98670 Zusage senden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-6E0647F7-8CDA-43ED-B9A1-670087E29BA6 Absage senden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
