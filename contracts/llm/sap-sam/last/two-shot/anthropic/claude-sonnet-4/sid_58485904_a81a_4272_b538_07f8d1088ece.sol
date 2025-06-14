// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T06:11:46.212Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_58485904_a81a_4272_b538_07f8d1088ece {
  uint public tokenState = 1;
  address[26] public participants;
  uint public conditions;
  constructor(address[26] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-44B55E4F-DE9C-4860-8E53-1917B2A0863D Return information provisioning --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-8A2CCF09-71BA-4819-80FE-A7C3391471E9 Data analysis --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B5425D44-FF60-41FD-A19D-407767378426 Stock provisioning --->
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-3A15E5D7-A616-4586-BB9A-0E6975CCAB7E Service provisioning --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-03D58ACE-7B6C-4114-A83E-DE9FF99E2B49 Inbound parcel provisioning --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-B6ED31E8-50BF-4329-BFA2-0DED6959E4E3 Inbound operations provisioning --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-8710E1FF-4C42-43EF-B9E7-982BBCFC7EE0 Return process provisioning --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-C15B3C20-46BF-4CAA-9D41-E88FE9943D21 Grading provisioning --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-716893C1-0C70-4D3C-A021-0ED392950526 Inventory provisioning --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-916D3B36-0B94-49C7-81DE-68E29B06433A Order provisioning --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-701C89F6-419F-4AA7-9089-47315823A340 Outbound operations provisioning --->
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-A08C028D-2ABA-45CC-BC58-61B8C21492A8 Shipment planning --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-975DBBF9-416A-469E-8196-E7A0D8B283A2 Transportation provisioning --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
