// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T08:43:20.009Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_49750b77_ac60_4753_9546_7a2f420eb466 {
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
        // <--- ChoreographyTask sid-ADE2BBE3-1E47-4634-867B-5FCC470C7C42 saopstavanje problema --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-BC1B9586-C693-42A6-9707-0E2713E56C27 dobijanje opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- ExclusiveGateway sid-9994DED5-787E-4BE2-AABA-D34534B31509 zna resenje? --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-2B0045D9-D674-4EEE-BC16-D6EFE522F432 konsultovanje o problemu --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- ExclusiveGateway sid-6ED7CC8A-7A9D-4CED-8883-81491F7B549B zna resenje? --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        } else {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-31F0A68E-0C14-4B89-8AB3-A1C46B586611 prosledjivanje problema podrsci 2.nivoa --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 objasnjavanje resenja --->
        if (6 == id && msg.sender == participants[11]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // <--- ExclusiveGateway sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965 vracanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // <--- ExclusiveGateway sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57 --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28 saopstavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break;
        }
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
