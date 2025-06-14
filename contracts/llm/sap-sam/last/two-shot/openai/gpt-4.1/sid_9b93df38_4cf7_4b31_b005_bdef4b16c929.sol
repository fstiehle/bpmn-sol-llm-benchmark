// test openai/gpt-4.1 - two-shot at 2025-06-12T01:53:36.140Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9b93df38_4cf7_4b31_b005_bdef4b16c929 {
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
        // <--- sid-12F8A9A9_1BBA_4189_B2BB_50302A8DAE12 Make Travel Offer --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-3AAF6F9A_764B_4E6B_A5E6_64A0BB764BF5 Cancel Offer --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-6729643A_010F_42B7_9B5C_B7CC2F46F517 Book travel --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-0EB774D6_DAE9_4EAB_8D9B_C96479746F2D Confirm booking --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-19A99E16_1C90_4C88_9D6A_393CEC7C2937 Pay travel --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-4219CAE4_9942_44EB_8A02_58EFD4D1A79B Order Ticket --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-BC9B7450_D485_4E95_A47D_53C52B27515E Confirm payment --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid_F7FDBC71_4FD3_420C_B46B_DABEACB56EDB --->
        if (conditions & 1 == 1) {
          // <--- transition to sid-6729643A_010F_42B7_9B5C_B7CC2F46F517 --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        } else {
          // <--- default transition to sid-3AAF6F9A_764B_4E6B_A5E6_64A0BB764BF5 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}