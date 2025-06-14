// test openai/gpt-4.1 - two-shot at 2025-06-12T01:51:20.272Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
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
      // Task 1: sid-4FCF24A6-4656-4A6D-8054-DB86A47FB3B2 Make Travel Offer by participant 0 (sid-B0F2AC12-3BF2-440A-84E5-2B6B1C00A8E1)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for Make Travel Offer
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway: sid-698D8508-7F6C-4157-B0FC-26DBE9BB687F (bit 2)
      if (_tokenState & 2 == 2) {
        // conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // default flow
          _tokenState &= ~uint(2);
          _tokenState |= 512;
          continue;
        }
      }
      // Task 2: sid-987596C8-0360-48D1-B7FB-3FA7C918F9D8 Pay Travel by participant 2 (sid-C29EA85E-CE83-43BD-85A6-0220A9FF876B)
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for Pay Travel (first occurrence)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Task 4: sid-940E58E2-0B8F-4B9C-B8D0-57D05311B214 Confirm Booking by participant 6 (sid-818872F0-E185-4CBF-BB6C-D8DCB4031550)
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for Confirm Booking
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // Task 5: sid-992E91E4-762C-4B6A-80E0-A9815A8D4187 Pay Travel by participant 8 (sid-0BED0672-57A1-42C0-88E5-A0AA810A7CB4)
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for Pay Travel (second occurrence)
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 3: sid-D6E8927B-7D26-44EA-9EF6-19D3C86821B1 Order Ticket by participant 4 (sid-E1B5055C-399A-4BE4-BD87-8EA1BC56D3F4)
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for Order Ticket
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 6: sid-5C61019F-F503-4448-A4DB-0AF73B07D301 Confirm Payment by participant 10 (sid-2513ACDF-358C-4930-A87E-DBD132D7130A)
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // custom code for Confirm Payment
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // End Event: Offer Cancelled (bit 512)
      if (_tokenState & 512 == 512) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}