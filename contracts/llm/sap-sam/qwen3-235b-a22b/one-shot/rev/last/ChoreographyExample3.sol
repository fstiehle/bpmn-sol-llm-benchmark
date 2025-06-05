// test GPT 4.1 - One Shot Revised at 2025-06-05T15:27:10.240Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_rev_ChoreographyExample3 {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  constructor(address[3] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // <--- exclusiveGateway Gateway_1bpkhpg --->
        bool conditionSatisfied = false;

        // Flow_067nql1: conditions & 1 == 1
        if ((conditions & 1) == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          conditionSatisfied = true;
        }

        if (!conditionSatisfied) {
          // default flow: Flow_0ymdsa2 -> ChoreographyTask_07t2zjo (bit 8)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }

      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (id == 4 && msg.sender == participants[0]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (id == 2 && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 16 == 16) {
        // <--- parallelGateway Gateway_1klfaw3 join --->
        // Wait for all incoming flows (from ChoreographyTask_0n57gae bit 4 and others)

        // If both bits 4 and 8 are inactive, then proceed
        if ((_tokenState & 4) == 0 && (_tokenState & 8) == 0) {
          _tokenState &= ~uint(16);
          _tokenState |= 24; // activate outgoing paths to ChoreographyTask_16lc74v (bit 32) and ChoreographyTask_0gnknm9 (bit 64)
          continue;
        }
      }

      if (_tokenState & 24 == 24) {
        // <--- parallelGateway Gateway_1klfaw3 split --->
        // Activate both outgoing tasks

        // If both tasks haven't been executed yet, activate them
        if ((_tokenState & 32) == 0 && (_tokenState & 64) == 0) {
          _tokenState &= ~uint(24);
          _tokenState |= 32 | 64;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (id == 1 && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_0gnknm9 Confirm ETA --->
        if (id == 5 && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 128 == 128) {
        // <--- parallelGateway Gateway_0xcnzox join --->
        // Check if all incoming tokens are consumed
        if ((_tokenState & 8) == 0 && (_tokenState & 32) == 0 && (_tokenState & 64) == 0) {
          _tokenState &= ~uint(128);

          // Only activate outgoing if all incoming were consumed
          _tokenState |= 256;
          continue;
        }
      }

      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (id == 3 && msg.sender == participants[1]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        }
      }

      if (_tokenState & 512 == 512) {
        // <--- parallelGateway Gateway_07ncm8m join --->
        // End event reached
        _tokenState &= ~uint(512);
        _tokenState |= 0; // process completed
        break;
      }

      break;
    }

    tokenState = _tokenState;
  }
}