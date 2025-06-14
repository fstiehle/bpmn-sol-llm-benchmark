// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:39:48.108Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_b8594f54_92d0_42b7_9d23_1e4f63e67f8f {
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
        // <--- Slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Dobijanje detaljnijeg opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Pitanje podrske prvog nivoa --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- Pitanje podrske II nivoa --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- Slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 32;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 16;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
