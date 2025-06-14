// test openai/gpt-4.1 - one-shot at 2025-06-11T23:24:38.494Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // ChoreographyTask sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93: Sharing files (taskID 1, initiator 0)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for Sharing files
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F: Ratinginformation (taskID 2, initiator 2)
      if (_tokenState & 16 == 16) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for Ratinginformation
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask sid-E53918A0-21BF-446B-B821-F5F45B4E3861: Enriching information (taskID 3, initiator 4)
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for Enriching information
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E: Retrieving information (taskID 4, initiator 6)
      if (_tokenState & 256 == 256) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for Retrieving information
          _tokenState &= ~uint(256);
          _tokenState |= 0; // End event
          break;
        }
      }
      // ExclusiveGateway sid-34E7111D-6C2E-4DFC-B4B3-66C2681E12E4
      // Input: 2, Output: 16 (to Ratinginformation), 32 (to Enriching information), 8 (to Join gateway)
      if (_tokenState & 2 == 2) {
        bool matched = false;
        // conditions & 1 == 1: to Enriching information (sid-E53918A0-21BF-446B-B821-F5F45B4E3861, 32)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          matched = true;
          continue;
        }
        // conditions & 2 == 2: to Join gateway (128)
        if (!matched && (conditions & 2 == 2)) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          matched = true;
          continue;
        }
        // default: to Ratinginformation (16)
        if (!matched) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        }
      }
      // Parallel Gateway join sid-D8020EDC-0BE5-4FE9-8289-5380EE6CEACE
      // Input: 8 (from sid-34E7111D-6C2E-4DFC-B4B3-66C2681E12E4), 64 (from Enriching information), 128 (from Ratinginformation)
      // Output: 256 (to Retrieving information)
      // Wait for all incoming tokens
      if ((_tokenState & 8 == 8) && (_tokenState & 64 == 64) && (_tokenState & 128 == 128)) {
        _tokenState &= ~uint(8 | 64 | 128);
        _tokenState |= 256;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}