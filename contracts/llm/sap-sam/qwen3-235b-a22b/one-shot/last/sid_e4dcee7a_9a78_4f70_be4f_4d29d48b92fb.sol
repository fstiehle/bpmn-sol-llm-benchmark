// test large Model - One Shot at 2025-06-02T19:33:11.484Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
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

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask: Klijent ima problem (ID: 0)
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // ChoreographyTask: Dobijanje opisa problema (ID: 1)
        if (id == 1 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // ExclusiveGateway after Dobijanje opisa problema - Check condition
        if ((conditions & 1) == 1) {
          // Use default branch: zna da resi
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // Alternative branch: ne zna da resi
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // ChoreographyTask: Saopstavanje resenja (ID: 2)
        if (id == 2 && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // End reached
        }
      }

      if (_tokenState & 16 == 16) {
        // ChoreographyTask: Pitanje podrske I nivoa (ID: 3)
        if (id == 3 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // ExclusiveGateway after Pitanje podrske I nivoa - Check condition
        if ((conditions & 1) == 1) {
          // Use default branch: zna da resi
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          // Alternative branch: ne zna da resi
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 64 == 64) {
        // ChoreographyTask: Slanje resenja (ID: 4)
        if (id == 4 && msg.sender == participants[9]) {
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          continue;
        }
      }

      if (_tokenState & 128 == 128) {
        // ChoreographyTask: Pitanje za II nivo (ID: 5)
        if (id == 5 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }

      if (_tokenState & 256 == 256) {
        // ChoreographyTask: (no name) (ID: 6)
        if (id == 6 && msg.sender == participants[13]) {
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          continue;
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}