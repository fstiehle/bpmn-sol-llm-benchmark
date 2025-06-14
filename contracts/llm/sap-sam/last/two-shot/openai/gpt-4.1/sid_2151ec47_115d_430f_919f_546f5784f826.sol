// test openai/gpt-4.1 - two-shot at 2025-06-12T00:12:15.972Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_2151ec47_115d_430f_919f_546f5784f826 {
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
      // <--- sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 Klijent ima problem --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-CE66FED6-A686-4096-B422-CD0BA169BE36 Dobijanje opisa problema --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- sid-1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja --->
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-13670263-52E5-49D8-9F4B-0558669622F0 Pitanje podrske I nivoa --->
      if (_tokenState & 4 == 4) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // <--- sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 Slanje resenja --->
      if (_tokenState & 8 == 8) {
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // <--- sid-6D099124-B421-417F-862D-8C820BA41D08 Pitanje za II nivo --->
      if (_tokenState & 16 == 16) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4  --->
      if (_tokenState & 64 == 64) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // <--- Exclusive Gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14 --->
      if (_tokenState & 4 == 4) {
        // At sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14, after Dobijanje opisa problema
        if (conditions & 1 == 1) {
          // zna da resi
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
        // else default: conditions & 1 != 1
        _tokenState &= ~uint(4);
        _tokenState |= 4;
        continue;
      }
      // <--- Exclusive Gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F --->
      if (_tokenState & 8 == 8) {
        // At sid-48B3C288-CF4E-4668-90E9-C6639F07A32F, after Pitanje podrske I nivoa
        if (conditions & 2 == 2) {
          // conditions & 2 == 2 -> Pitanje za II nivo
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
        // else default
        _tokenState &= ~uint(8);
        _tokenState |= 8;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}