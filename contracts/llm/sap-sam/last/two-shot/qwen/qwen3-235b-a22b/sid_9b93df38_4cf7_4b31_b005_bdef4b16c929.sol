// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T14:43:53.970Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_9b93df38_4cf7_4b31_b005_bdef4b16c929 {
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
        // <--- sid-12F8A9A9-1BBA-4189-B2BB-50302A8DAE12 Make Travel Offer --->
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 6;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- sid-3AAF6F9A-764B-4E6B-A5E6-64A0BB764BF5 Cancel Offer --->
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- sid-6729643A-010F-42B7-9B5C-B7CC2F46F517 Book travel --->
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid-0EB774D6-DAE9-4EAB-8D9B-C96479746F2D Confirm booking --->
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // <--- sid-19A99E16-1C90-4C88-9D6A-393CEC7C2937 Pay travel --->
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- sid-4219CAE4-9942-44EB-8A02-58EFD4D1A79B Order Ticket --->
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // <--- sid-BC9B7450-D485-4E95-A47D-53C52B27515E Confirm payment --->
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 6 == 6) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(6);
          _tokenState |= 4;
          continue;
        } else {
          _tokenState &= ~uint(6);
          _tokenState |= 2;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        _tokenState = 0;
        break;
      }
      
      if (_tokenState & 64 == 64) {
        _tokenState = 0;
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
