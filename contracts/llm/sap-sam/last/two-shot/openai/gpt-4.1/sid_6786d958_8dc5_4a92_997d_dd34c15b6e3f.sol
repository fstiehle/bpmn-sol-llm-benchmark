// test openai/gpt-4.1 - two-shot at 2025-06-12T01:10:44.552Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6786d958_8dc5_4a92_997d_dd34c15b6e3f {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-40B088FB-BEF2-4CD4-B269-B0902EB49BF6 Request for Tender
      if (_tokenState & 1 == 1) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for sid-40B088FB_BEF2_4CD4_B269_B0902EB49BF6 --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-30065477-C3FC-44B6-9BAB-45FD254F6CF9 New request for tender
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for sid-30065477_C3FC_44B6_9BAB_45FD254F6CF9 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-546BF032-593C-4B67-93B7-A531E433B0A0 Make offer
      if (_tokenState & 4 == 4) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for sid-546BF032_593C_4B67_93B7_A531E433B0A0 --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // sid-3FD7392B-985E-4CFD-8444-055573C3AD47 Announce the scores
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for sid-3FD7392B_985E_4CFD_8444_055573C3AD47 --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-663F88C0-8E57-4A4A-B75C-F55BFBFB1127 Purchase product part
      if (_tokenState & 16 == 16) {
        if (1 == id && msg.sender == participants[1]) {
          // <--- custom code for sid-663F88C0_8E57_4A4A_B75C_F55BFBFB1127 --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      // ExclusiveGateway sid-EC53D41D-4AE2-498C-B7A1-8BD251F3496E
      if (_tokenState & 32 == 32) {
        // sid-2816E5E6-B6B5-478C-AEFE-0F8EC55C4E01 [conditions & 1 == 1] -> sid-663F88C0-8E57-4A4A-B75C-F55BFBFB1127
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(32);
          _tokenState |= 16;
          continue;
        }
        // default sid-DF06E487-6949-4A8D-8AFA-7E5A58641B84 -> sid-30065477-C3FC-44B6-9BAB-45FD254F6CF9
        _tokenState &= ~uint(32);
        _tokenState |= 2;
        continue;
      }
      // ExclusiveGateway sid-B953A627-0553-47E5-9038-FC872838EA17
      if (_tokenState & 64 == 64) {
        // default sid-01C1A84B-319A-46CC-B1EA-722D093ADD86 -> sid-546BF032-593C-4B67-93B7-A531E433B0A0
        _tokenState &= ~uint(64);
        _tokenState |= 4;
        continue;
      }
      // sid-40B088FB-BEF2-4CD4-B269-B0902EB49BF6 -> sid-B953A627-0553-47E5-9038-FC872838EA17
      if (_tokenState & 128 == 128) {
        _tokenState &= ~uint(128);
        _tokenState |= 64;
        continue;
      }
      // sid-30065477-C3FC-44B6-9BAB-45FD254F6CF9 -> sid-B953A627-0553-47E5-9038-FC872838EA17
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        _tokenState |= 64;
        continue;
      }
      // sid-546BF032-593C-4B67-93B7-A531E433B0A0 -> sid-3FD7392B-985E-4CFD-8444-055573C3AD47
      if (_tokenState & 512 == 512) {
        _tokenState &= ~uint(512);
        _tokenState |= 8;
        continue;
      }
      // sid-3FD7392B-985E-4CFD-8444-055573C3AD47 -> sid-EC53D41D-4AE2-498C-B7A1-8BD251F3496E
      if (_tokenState & 1024 == 1024) {
        _tokenState &= ~uint(1024);
        _tokenState |= 32;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
