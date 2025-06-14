// test openai/gpt-4.1 - one-shot at 2025-06-11T23:46:51.025Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_6aff5cab_5e98_4188_a1ac_32801e4463a1 {
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
      // <--- sid-3F775A63-8F88-4A2D-BFB3-9ED51BB135AA Make offer --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- Exclusive Gateway sid-B2A38002-B4CD-4F5D-888D-E1ACE18171B2 --->
      if (_tokenState & 2 == 2) {
        // [sid-9354A2AE-DE2F-4470-8B31-9C0F651EA1C2] Not interesting: to sid-C7391D76-8597-40A5-A68E-E087ABAF6F95
        // [sid-D67F6B74-749A-4535-893D-2B7126CD9E27] Interesting: to sid-45B02DFF-777A-49A8-8650-349417988200
        // If there are conditions, evaluate them; else, use the default branch.
        // No conditionExpression in XML, so default flow: user must set conditions to select path.
        // We'll use: if (conditions & 1 == 1) -> Book travel, else -> Reject offer.
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- sid-C7391D76-8597-40A5-A68E-E087ABAF6F95 Reject offer --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end (offer rejected)
        }
      }
      // <--- sid-45B02DFF-777A-49A8-8650-349417988200 Book travel --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // <--- sid-D176C9DD-F425-47B1-9296-E2C6026571C0 Payment --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-FD2EFD26-A287-40C7-B1D5-591CF001FD2C Order ticket --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // <--- Exclusive Gateway sid-7B3D319C-003D-46CA-996D-B14EE586AA57 --->
      if (_tokenState & 64 == 64) {
        // [sid-D318526A-CF79-4776-924B-5E7DF937305E] payment was made: to sid-95C196A9-B381-4B95-B589-4CFBF59971FE
        // [sid-EE8CBB16-9BFC-4571-B1AD-8316D89DF29A] payment cannot be made: to sid-9D821BB7-F9B4-440B-B613-BA3E68DB760C
        // if (conditions & 2 == 2) -> Confirm payment
        // else -> Refuse payment
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }
      // <--- sid-95C196A9-B381-4B95-B589-4CFBF59971FE Confirm payment --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end (offer rejected)
        }
      }
      // <--- sid-9D821BB7-F9B4-440B-B613-BA3E68DB760C Refuse payment --->
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end (offer rejected)
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}