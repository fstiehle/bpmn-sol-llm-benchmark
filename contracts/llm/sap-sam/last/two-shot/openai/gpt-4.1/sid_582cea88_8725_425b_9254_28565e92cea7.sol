// test openai/gpt-4.1 - two-shot at 2025-06-12T01:06:07.452Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_582cea88_8725_425b_9254_28565e92cea7 {
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
      // <--- sid-1A1E8E50-B672-4475-B6FD-5DEA9B1225EC send Credit Card Application --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-8FF1ED8F-5296-456F-A095-9C13C881D5D1 send Credt File request --->
      if (_tokenState & 2 == 2) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- sid-D68AD0BC-AE79-411E-A3E0-5B6EF2DC32E1 send Credit File --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // <--- sid-2C0F233E-EB17-4C7B-8E3A-02D33BA6BDA2 send Application Acceptance --->
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-04D38013-6E3C-4B41-ABB6-7322759E40D7 send Application rejection --->
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-9D500E37-A113-4014-B70C-F3B21B1F5167 Applicant suitable? (exclusive gateway) --->
      if (_tokenState & 8 == 8) {
        // Gateway logic: 2 outgoing, default is sid-370480D9-1B27-457D-A30F-2967DA9121DE (to sid-8FF1ED8F-5296-456F-A095-9C13C881D5D1), condition sid-FA31A748-B780-4185-81F8-A5359482E60D (to gateway sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8)
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // condition sid-FA31A748-B780-4185-81F8-A5359482E60D
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default: sid-370480D9-1B27-457D-A30F-2967DA9121DE
          _tokenState &= ~uint(8);
          _tokenState |= 2;
          continue;
        }
      }
      // <--- sid-C9868726-531B-42B7-ADD1-EBF992BE647C Credit Card eligable? (exclusive gateway) --->
      if (_tokenState & 128 == 128) {
        // Gateway logic: 2 outgoing, default is sid-88E1ED7C-3959-43D2-B2E2-AE4A10FEA13A (to sid-2C0F233E-EB17-4C7B-8E3A-02D33BA6BDA2), condition sid-13DA1567-1715-4326-BEC4-43C5699837D2 (to gateway sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8)
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // condition sid-13DA1567-1715-4326-BEC4-43C5699837D2
          _tokenState &= ~uint(128);
          _tokenState |= 64;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default: sid-88E1ED7C-3959-43D2-B2E2-AE4A10FEA13A
          _tokenState &= ~uint(128);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- sid-87F0D9F7-EA85-4767-B907-3BDD069B1AC8 Converging exclusive gateway --->
      if (_tokenState & 64 == 64) {
        // Wait for tokens from sid-9D500E37-A113-4014-B70C-F3B21B1F5167 (via sid-FA31A748-B780-4185-81F8-A5359482E60D) or sid-C9868726-531B-42B7-ADD1-EBF992BE647C (via sid-13DA1567-1715-4326-BEC4-43C5699837D2)
        // Both sequence flows join here, then go to sid-04D38013-6E3C-4B41-ABB6-7322759E40D7
        _tokenState &= ~uint(64);
        _tokenState |= 32;
        continue;
      }
      // <--- sid-A881A6B6-9BF8-4683-9F4E-9DBC321476CD sequence to gateway sid-C9868726-531B-42B7-ADD1-EBF992BE647C --->
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        _tokenState |= 128;
        continue;
      }
      // <--- after send Credit File, go to sid-C9868726-531B-42B7-ADD1-EBF992BE647C (gateway) --->
      if (_tokenState & 8 == 8 && _tokenState & 4 == 0) {
        _tokenState &= ~uint(8);
        _tokenState |= 128;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
