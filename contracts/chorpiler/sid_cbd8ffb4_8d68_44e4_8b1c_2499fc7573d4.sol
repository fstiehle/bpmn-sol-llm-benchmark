//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_cbd8ffb4_8d68_44e4_8b1c_2499fc7573d4 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;

  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-6397C5D1-4939-4F5B-B131-6047DF824EFC Order product --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 2 == 2) {
          // <--- sid-CBCF1FEF-3F01-40F8-AFB4-3E5715B36540 Purchase product part --->
          if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-30065477-C3FC-44B6-9BAB-45FD254F6CF9 New request for tender --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-54AA47B3-19DB-4365-A7DF-8B9DC23CFDD0 Deliver product --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- sid-40B088FB-BEF2-4CD4-B269-B0902EB49BF6 Request for Tender --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-3FD7392B-985E-4CFD-8444-055573C3AD47 Announce the scores --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-546BF032-593C-4B67-93B7-A531E433B0A0 Make offer --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-178D9B41-F112-4AB1-A2A5-BEE414A19541 Create new scoring decision --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-110F04B8-AA93-4EE1-8B27-A6D24CC17C6E Decide on winner --->
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-B16ABBF5-5C01-46BC-B1C4-4B342B9C0903 Decide on winner --->
        if (10 == id && msg.sender == participants[19]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-F55F4358-A68B-4837-A15D-0AEE042E5FD0 Provide offers --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 3072 == 3072) {
        // <---  auto transition  --->
        _tokenState &= ~uint(3072);
        _tokenState |= 4;
        continue; 
      }
      break;
    }

    tokenState = _tokenState;
  }

}