// test openai/gpt-4.1 - one-shot at 2025-06-11T23:53:19.317Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_82666824_6d65_4fd7_a2a7_23d4a9ca9394 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-5B71C081_60D0_41BD_A0DC_E385E5035AA7 Make return/complaint --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-90BA106B_D21C_4A6F_9D20_61879353849B Send product --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-B68D9767_8C3C_4D60_BC5E_66982A8FCA74 Checking product --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // Event-based gateway (sid-5A35CECB_45AD_4994_AEE3_B9F0DDD05EC8)
      // Three outgoing flows:
      //   - sid-0DADE29F_A496_4C28_83B6_80EB4E6E7ACF to sid-3C568A39_2054_4401_8B0B_E0DB372732BF (task 5)
      //   - sid-373804F3_AC1B_4F6F_B782_11CF7F8948C8 to sid-3F98CB79_F885_47D5_BD69_C6355DDCF23C (task 6)
      //   - sid-B2AF1392_CD59_4EB4_B00F_4F79E81A1C5C to sid-5DFB9625_36C4_4410_AACF_2E57231E1B52 (task 4)
      if (_tokenState & 8 == 8) {
        // <--- sid-5A35CECB_45AD_4994_AEE3_B9F0DDD05EC8 eventBasedGateway --->
        // This gateway is event-based, so all its outgoing flows are enabled by waiting for one of the next tasks.
        // We represent this by activating all possible outgoing task tokens.
        _tokenState &= ~uint(8);
        _tokenState |= (16 | 32 | 64); // 5,6,4
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-5DFB9625_36C4_4410_AACF_2E57231E1B52 Reject complaint/return --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-3C568A39_2054_4401_8B0B_E0DB372732BF Send product to repair --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-3F98CB79_F885_47D5_BD69_C6355DDCF23C Send money to client --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-32A1A621_E61A_455D_8744_722B80F8957C Resend repaired product --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-89AE49BF_22B6_4845_B15D_45F0BF9D87AF Send product to client --->
        if (8 == id && msg.sender == participants[15]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}