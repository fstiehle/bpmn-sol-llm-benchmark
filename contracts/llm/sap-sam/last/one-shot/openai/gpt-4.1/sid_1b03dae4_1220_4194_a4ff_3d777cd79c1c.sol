// test openai/gpt-4.1 - one-shot at 2025-06-11T23:26:54.330Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_1b03dae4_1220_4194_a4ff_3d777cd79c1c {
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
    while (_tokenState != 0) {
      // <--- sid-A7638941-30FE-45AC-A612-C227C72D5F76 (M1) --->
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-1071CFC9-F879-43FC-9065-70097B82BD19 (M4) --->
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // <--- sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF (M2) --->
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E (M3) --->
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // <--- sid-6FFFC22F-E9A9-41C4-BA64-65C72CF1EE31 (M5) --->
      if (_tokenState & 128 == 128) {
        if (id == 5 && msg.sender == participants[8]) {
          // custom code
          _tokenState &= ~uint(128);
          _tokenState |= 0; // end
          break;
        }
      }
      // <--- ParallelGateway Split (sid-00E07E95_7526_4B8C_BACC_C00BBAB4E570): after M1, activates M4 and M2 in parallel --->
      if (_tokenState & 2 == 2) {
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // <--- ParallelGateway Join (sid-95EDDF96_752C_4BC2_AB18_629BE80CE91F): waits for M4 and M3 --->
      if (_tokenState & 48 == 48) {
        _tokenState &= ~uint(48);
        _tokenState |= 128;
        continue;
      }
      // <--- sid-C2405B42-3A6C-4E8E-BA4C-BFD35BA4F9FF (M2) to sid-116E070A-B0D8-4BCD-B082-AE9D3968F94E (M3) --->
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}