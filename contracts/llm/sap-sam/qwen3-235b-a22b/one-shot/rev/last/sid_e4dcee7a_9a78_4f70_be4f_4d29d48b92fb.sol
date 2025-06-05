// test GPT 4.1 - One Shot Revised at 2025-06-05T15:27:53.645Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_rev_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
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

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 Klijent ima problem --->
        if (0 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-CE66FED6-A686-4096-B422-CD0BA169BE36 Dobijanje opisa problema --->
        if (1 == id && msg.sender == participants[3]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // Handle exclusive gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14
        bool conditionFound = false;
        
        if ((_tokenState & 4) != 0 && (conditions & 1 == 1)) {
          // Flow sid-33A8E44F-06B2-4533-A74B-F7050EDEE454: zna da resi
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          conditionFound = true;
        }
        
        if (!conditionFound) {
          // Default flow sid-12D77D4B-7601-44F0-9584-D53B9ED172D7: conditions & 1 == 1
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja --->
        if (2 == id && msg.sender == participants[5]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-13670263-52E5-49D8-9F4B-0558669622F0 Pitanje podrske I nivoa --->
        if (3 == id && msg.sender == participants[6]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // Handle exclusive gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F
        bool conditionFound = false;
        
        if ((_tokenState & 32) != 0 && (conditions & 2 == 2)) {
          // Flow sid-9DB58BF7-4DA6-4FA7-9891-35B252277184: conditions & 2 == 2
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          conditionFound = true;
        }
        
        if (!conditionFound) {
          // Default flow sid-D440A563-2988-4875-AF79-8F6451742A5A: zna da resi
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 Slanje resenja --->
        if (4 == id && msg.sender == participants[9]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask sid-6D099124-B421-417F-862D-8C820BA41D08 Pitanje za II nivo --->
        if (5 == id && msg.sender == participants[10]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4  --->
        if (6 == id && msg.sender == participants[13]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          continue;
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}