// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T09:53:39.389Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_3e540bea_9ea2_4ddb_8cd0_a0b78c942efa {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-36C0040E-7810-4DE4-BB7B-C312FB7C51F0 Klijent ima problem --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-663EA2D1-A326-4D98-A4DE-2D130817DE4D Detaljnije opisivanje problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-EBC1C952-4F4E-4F3B-A435-993EC8C7A873 Objasnjavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-415D7F49-1116-4014-9313-6F5CF696EF08 Objasnjavanje resera operateru --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-CCF9A421-42C3-43D0-A441-374253CCCA89 Pitanje podrske drugog nivoa --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-2173A2F1-5CB3-47EE-8C89-BFCF203F248A Objasnjavanje resenja podrsci prvog nivoa --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <---  auto transition  --->
        _tokenState &= ~uint(256);
        _tokenState |= 32;
        continue; 
      }
      if (_tokenState & 512 == 512) {
        // <---  auto transition  --->
        _tokenState &= ~uint(512);
        _tokenState |= 8;
        continue; 
      }
      if (_tokenState & 1024 == 1024) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1024);
        _tokenState |= 256;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
