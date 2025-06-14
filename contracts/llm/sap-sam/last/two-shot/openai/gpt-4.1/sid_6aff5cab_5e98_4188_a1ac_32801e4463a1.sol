// test openai/gpt-4.1 - two-shot at 2025-06-12T01:11:37.520Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6aff5cab_5e98_4188_a1ac_32801e4463a1 {
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
        // <--- sid-3F775A63_8F88_4A2D_BFB3_9ED51BB135AA Make offer --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-C7391D76_8597_40A5_A68E_E087ABAF6F95 Reject offer --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-45B02DFF_777A_49A8_8650_349417988200 Book travel --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-D176C9DD_F425_47B1_9296_E2C6026571C0 Payment --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-FD2EFD26_A287_40C7_B1D5_591CF001FD2C Order ticket --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-95C196A9_B381_4B95_B589_4CFBF59971FE Confirm payment --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-9D821BB7_F9B4_440B_B613_BA3E68DB760C Refuse payment --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Event-based gateway sid-B2A38002_B4CD_4F5D_888D_E1ACE18171B2 (after Make offer)
      if (_tokenState & 2 == 2) {
        // diverging event-based gateway
        // If conditions & 1 == 1 (Not interesting), go to Reject offer
        // Else, go to Book travel
        // Since no conditions are specified, we map based on process: two outgoing flows, Not interesting (to reject), Interesting (to book)
        // We'll check conditions & 1 == 1 for Not interesting, else default to Book travel
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4; // Reject offer
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 8; // Book travel
          continue;
        }
      }
      // After Book travel, enable Payment
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 32; // Payment
        continue;
      }
      // After Payment, enable Order ticket
      if (_tokenState & 64 == 64) {
        _tokenState &= ~uint(64);
        _tokenState |= 128; // Order ticket
        continue;
      }
      // Event-based gateway sid-7B3D319C_003D_46CA_996D_B14EE586AA57 (after Order ticket)
      if (_tokenState & 256 == 256) {
        // diverging event-based gateway
        // payment was made -> Confirm payment
        // payment cannot be made -> Refuse payment
        // We'll check conditions & 2 == 2 for payment was made, else default to Refuse payment.
        if ((conditions & 2) == 2) {
          _tokenState &= ~uint(256);
          _tokenState |= 512; // Confirm payment
          continue;
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 1024; // Refuse payment
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}