// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:44:52.247Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_8fa161ac_b189_4cd4_a56c_f60e324a593e {
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
        // <--- sid-DC738A66-7525-4C02-99D0-E48FC804756A slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-34874B10-2120-4641-85D3-7DA5014FE9FD opisivanje problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-49E97E55-D6C3-4E09-879F-677795D88F23 slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-EB288683-8547-4DA6-BDC0-A1AE5A38734D konsultovanje PPN --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-598E252E-B2A2-40AA-AB49-CD70F467EF44 slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-556F6605-D15D-4916-BBF5-006F8307FA38 slanje opisa problema --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-45AEC8AE-290B-4570-B253-51A903050093 slanje resenja i objasnjenja --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- auto transition for sid-434BA095-2193-4B16-9326-08C37AF51696 --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        } else {
          // <--- default path for sid-434BA095-2193-4B16-9326-08C37AF51696 --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <--- auto transition for sid-C89B3DFB-38A4-4171-8A9B-C3629916A230 --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue; 
        } else {
          // <--- default path for sid-C89B3DFB-38A4-4171-8A9B-C3629916A230 --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}