// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:56:24.122Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
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
        // <--- ChoreographyTask_17BDCD00-2EF4-4300-9B41-89E99AB80C1E Bewerbung abschicken --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2 | 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway_7DDDABBB-2A98-4667-BB99-A3F3F5C8D9D4 --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_D2B4F66F-E45A-4EE5-BA1E-19823BBCB8C4 fehlende Unterlagen anfordern --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_AF21D2E5-26A2-4BDA-A13A-3505624B4560 Zusage versenden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64 | 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- Gateway_5C25C2F4-2009-4959-99FB-C24B1A927205 --->
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 256;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 512;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_CAAC4136-6550-45D4-B9FF-DA7123ABC114 fehlende Unterlagen nachschicken --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_27A367A7-12ED-4EC6-BEDA-3DFD1B6BBA81 Absage versenden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- Gateway_C30C3A12-7A31-4C23-9FDC-6F5E501D1939 --->
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 1024;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 2048;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_AF21D2E5-26A2-4BDA-A13A-3505624B4560 Zusage versenden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 64 | 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- Gateway_8F38EF2C-B6DB-402D-8C9B-4B94B56A19B7 --->
        if (conditions & 8 == 8) {
          // <---  auto transition  --->
          _tokenState &= ~uint(512);
          _tokenState |= 64;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_30B3598E-DF0D-402D-BD8A-BC8236E8E422 Immatrikulationsunterlagen versenden --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- Gateway_A37F2E87-C324-404F-9D19-5E34AFC5C86A --->
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break; // is end
        } else {
          // <---  auto transition  --->
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
