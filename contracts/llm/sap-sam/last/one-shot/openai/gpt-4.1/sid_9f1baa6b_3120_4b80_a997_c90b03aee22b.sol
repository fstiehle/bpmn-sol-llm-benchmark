// test openai/gpt-4.1 - one-shot at 2025-06-12T00:01:24.733Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9f1baa6b_3120_4b80_a997_c90b03aee22b {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // Task 1: sid-B42E1B08-155A-4A95-9B09-E46F90D9B584 (Make travel offer)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for Make travel offer --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: sid-EFD4788E-A1A4-40E5-A500-0970010990DD (Place order)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for Place order --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Gateway: sid-E7E1374C-CB39-4070-BF5F-E7518BFE6888 (event based, exclusive)
      if (_tokenState & 4 == 4) {
        // This gateway has two outgoing flows:
        // - sid-606D3E0E-B68E-4D1B-93EB-34CBBF91B4B1 -> sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 (Reject Order)
        // - sid-07192878-6F47-4215-BE50-716F658FA62F -> sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 (Apply order)
        // No conditions in this event-based gateway, so both paths are possible based on which task is enacted.
        // We implement this by activating both target tasks (3 and 4), but only allowing one to be executed (since only one can be enacted at a time).
        _tokenState &= ~uint(4);
        _tokenState |= 24; // 8 | 16 (task 3 and 4 bits)
        continue;
      }
      // Task 3: sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 (Reject Order)
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for Reject Order --->
          _tokenState &= ~uint(8);
          // End event: sid-E6C77BA6-1DD1-4560-B7DF-32D64F40343F
          _tokenState = 0;
          break;
        }
      }
      // Task 4: sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 (Apply order)
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for Apply order --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 5: sid-6676D52C-DF78-4BB4-885E-3E6236D6B9D3 (Confirm booking)
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for Confirm booking --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 6: sid-6EE679BB-748F-4253-B501-87CCF2E0D7D0 (Pay travel)
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for Pay travel --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Task 7: sid-8D8EFFEB-C49E-4DC9-B6B6-8AC520B8A50C (Order ticket)
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for Order ticket --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // Gateway: sid-798ECEE9-70E6-446D-B76B-F22BF7F51E68 (exclusive)
      // incoming: sid-6A6F33B9-26E8-4029-98BE-8F559B08DE52 -> (from task 7)
      // outgoing: sid-60BF1208-4C0A-4FDF-B43D-C0A023F31983 (default) -> task 8
      //           sid-17572496-3030-4AF9-A87F-3E5065BF1B58 (cond)   -> task 9
      if (_tokenState & 256 == 256) {
        // Condition: conditions & 1 == 1 goes to task 9, else default to task 8
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue;
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        }
      }
      // Task 8: sid-795C6F26-3630-45A8-BAB6-DE8820B8DBB0 (Refuse payment)
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for Refuse payment --->
          _tokenState &= ~uint(512);
          // End event: sid-E6C77BA6-1DD1-4560-B7DF-32D64F40343F
          _tokenState = 0;
          break;
        }
      }
      // Task 9: sid-49741E13-1B13-422C-8AD2-6B8241F6E32E (Confirm payment)
      if (_tokenState & 1024 == 1024) {
        if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for Confirm payment --->
          _tokenState &= ~uint(1024);
          // End event: sid-E6C77BA6-1DD1-4560-B7DF-32D64F40343F
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}