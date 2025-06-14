// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:45:12.099Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
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
        // <--- sid-4FCF24A6-4656-4A6D-8054-DB86A47FB3B2 Make Travel Offer --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-987596C8-0360-48D1-B7FB-3FA7C918F9D8 Pay Travel --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-940E58E2-0B8F-4B9C-B8D0-57D05311B214 Confirm Booking --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-992E91E4-762C-4B6A-80E0-A9815A8D4187 Pay Travel --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-D6E8927B-7D26-44EA-9EF6-19D3C86821B1 Order Ticket --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-5C61019F-F503-4448-A4DB-0AF73B07D301 Confirm Payment --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-698D8508-7F6C-4157-B0FC-26DBE9BB687F Exclusive Gateway --->
        if (conditions & 1 == 1) {
          // <--- auto transition for condition --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        } else {
          // <--- default path --->
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