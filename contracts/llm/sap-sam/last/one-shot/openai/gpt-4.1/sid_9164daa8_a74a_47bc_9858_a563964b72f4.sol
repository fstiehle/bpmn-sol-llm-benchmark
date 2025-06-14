// test openai/gpt-4.1 - one-shot at 2025-06-11T23:57:38.020Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9164daa8_a74a_47bc_9858_a563964b72f4 {
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
      // Task 1: sid-4FCF24A6-4656-4A6D-8054-DB86A47FB3B2 (Make Travel Offer) [initiatingParticipantRef="sid-B0F2AC12-3BF2-440A-84E5-2B6B1C00A8E1" = 0]
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for MakeTravelOffer here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Gateway sid-698D8508_7F6C_4157_B0FC_26DBE9BB687F (exclusive, bits=2)
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        // Condition: sid-E0CD8AF5-E7A0-4DDE-9AE6-3E5BE1E32F09 -- conditionExpression: conditions & 1 == 1 (to endEvent sid-FD9FA994-1503-4D8F-981D-5A7E908A615A)
        if ((conditions & 1) == 1) {
          // End event reached (Offer Cancelled)
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break;
        }
        // Default: sid-F8DD7F83-16E1-428C-AF56-8BB002189881 (to sid-987596C8-0360-48D1-B7FB-3FA7C918F9D8, task 2)
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // Task 2: sid-987596C8-0360-48D1-B7FB-3FA7C918F9D8 (Pay Travel) [initiatingParticipantRef="sid-C29EA85E-CE83-43BD-85A6-0220A9FF876B" = 2]
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for PayTravel here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Task 4: sid-940E58E2-0B8F-4B9C-B8D0-57D05311B214 (Confirm Booking) [initiatingParticipantRef="sid-818872F0-E185-4CBF-BB6C-D8DCB4031550" = 6]
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for ConfirmBooking here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // Task 5: sid-992E91E4-762C-4B6A-80E0-A9815A8D4187 (Pay Travel) [initiatingParticipantRef="sid-0BED0672-57A1-42C0-88E5-A0AA810A7CB4" = 8]
      if (_tokenState & 16 == 16) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for PayTravel here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 3: sid-D6E8927B-7D26-44EA-9EF6-19D3C86821B1 (Order Ticket) [initiatingParticipantRef="sid-E1B5055C-399A-4BE4-BD87-8EA1BC56D3F4" = 4]
      if (_tokenState & 32 == 32) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for OrderTicket here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 6: sid-5C61019F-F503-4448-A4DB-0AF73B07D301 (Confirm Payment) [initiatingParticipantRef="sid-2513ACDF-358C-4930-A87E-DBD132D7130A" = 10]
      if (_tokenState & 64 == 64) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for ConfirmPayment here --->
          _tokenState &= ~uint(64);
          // End event reached (Offer Cancelled)
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
