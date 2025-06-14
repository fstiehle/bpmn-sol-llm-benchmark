// test openai/gpt-4.1 - one-shot at 2025-06-11T23:59:42.016Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9b93df38_4cf7_4b31_b005_bdef4b16c929 {
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
      // Task 1 (sid_12F8A9A9_1BBA_4189_B2BB_50302A8DAE12): Make Travel Offer, by participants[0]
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for Make Travel Offer here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway sid_F7FDBC71_4FD3_420C_B46B_DABEACB56EDB (bit 2)
      if (_tokenState & 2 == 2) {
        bool matched = false;
        // SequenceFlow sid_3E755A2C_8444_4A1A_9FC7_E133F0686421: conditions & 1 == 1 to task 3
        if (conditions & 1 == 1) {
          // to Book travel (task 3, bit 8)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          matched = true;
          continue;
        }
        if (!matched) {
          // default sid_02A81E5A_F2F9_41E3_B4A0_A29E7CFCF2F7: to Cancel Offer (task 2, bit 4)
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // Task 2 (sid_3AAF6F9A_764B_4E6B_A5E6_64A0BB764BF5): Cancel Offer, by participants[2]
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for Cancel Offer here --->
          _tokenState &= ~uint(4);
          // End event (sid_45D99603_C78D_4A3E_A921_028E7B7C18BE)
          _tokenState = 0;
          break;
        }
      }
      // Task 3 (sid_6729643A_010F_42B7_9B5C_B7CC2F46F517): Book travel, by participants[4]
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for Book travel here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // Task 4 (sid_0EB774D6_DAE9_4EAB_8D9B_C96479746F2D): Confirm booking, by participants[6]
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for Confirm booking here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 5 (sid_19A99E16_1C90_4C88_9D6A_393CEC7C2937): Pay travel, by participants[8]
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for Pay travel here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 6 (sid_4219CAE4_9942_44EB_8A02_58EFD4D1A79B): Order Ticket, by participants[10]
      if (_tokenState & 64 == 64) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for Order Ticket here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Task 7 (sid_BC9B7450_D485_4E95_A47D_53C52B27515E): Confirm payment, by participants[12]
      if (_tokenState & 128 == 128) {
        if (id == 7 && msg.sender == participants[12]) {
          // <--- custom code for Confirm payment here --->
          _tokenState &= ~uint(128);
          // End event (sid_45D99603_C78D_4A3E_A921_028E7B7C18BE)
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}