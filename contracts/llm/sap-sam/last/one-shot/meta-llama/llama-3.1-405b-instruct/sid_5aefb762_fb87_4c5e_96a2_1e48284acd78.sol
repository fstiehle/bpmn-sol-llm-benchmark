// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:04:24.811Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_5aefb762_fb87_4c5e_96a2_1e48284acd78 {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;

  constructor(address[18] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- zahtev za transportom --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- slanje odgovora korisniku --->
        if (2 == taskID && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- uplata novca --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- predaja paketa --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 1 == 1) {
          // <--- obavestavanje korisnika --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        } else {
          // <--- predaja paketa carini --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- obavestavanje korisnika --->
        if (5 == taskID && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- obavestavanje nadleznih organa --->
        if (6 == taskID && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- join --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 2 == 2) {
          // <--- slanje potvrde o isporuci paketa --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        } else {
          // <--- vracanje paketa korisniku --->
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- slanje potvrde o isporuci paketa --->
        if (9 == taskID && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- vracanje paketa korisniku --->
        if (8 == taskID && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
