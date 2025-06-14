// test meta-llama/llama-3.1-405b-instruct - two-shot at 2025-06-12T16:11:49.611Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_1_405b_instruct_two_shot_sid_9c5ded8f_d4e2_4108_a8c0_491376444823 {
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
        // <--- sid-5E016529-61C6-4145-B0FE-2D3A09890067 Przyjmij pacjenta --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-6A80CAC2-0693-49CC-93AE-99B8F5168A60 Poczekaj na organ --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
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
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-BA78A708-DDDF-456A-BF00-5A762D0F7D35 Poczekaj na gotowość zespołu --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-2B07B286-2482-4BFA-95A9-59CFD87112F0 Poczekaj na decyzję dotyczącą gotowości zespołu --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-AB42C175-3483-4A91-A939-0CC7F6045F09 Przetransportuj organ --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
