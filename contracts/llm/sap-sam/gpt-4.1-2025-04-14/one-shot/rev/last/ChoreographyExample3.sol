// test GPT 4.1 - One Shot Revised at 2025-06-05T15:21:03.123Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_ChoreographyExample3 {
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

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (0 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Gateway_1bpkhpg exclusive gateway --->
        // Two outgoing: Flow_0ymdsa2 (default), Flow_067nql1 (has condition)
        // Flow_067nql1: to ChoreographyTask_0n57gae, condition: conditions & 1 == 1
        // Flow_0ymdsa2: to ChoreographyTask_07t2zjo (unavailable), default
        if (conditions & 1 == 1) {
          // activate ChoreographyTask_0n57gae (bit 4)
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue;
        } else {
          // default to ChoreographyTask_07t2zjo (bit 8)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (2 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state (Gateway_07ncm8m, bit 256)
          _tokenState &= ~uint(8);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_0n57gae Confirm order --->
        if (4 == id && msg.sender == participants[0]) {
          // Transition: deactivate current, activate next state (Gateway_1klfaw3, bit 32)
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- Gateway_1klfaw3 parallel gateway (split) --->
        // Outgoing: ChoreographyTask_16lc74v (bit 64), ChoreographyTask_0gnknm9 (bit 512)
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        _tokenState |= 512;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (1 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state (Gateway_0xcnzox, bit 128)
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_0gnknm9 Confirm ETA --->
        if (5 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state (Gateway_0xcnzox, bit 128)
          _tokenState &= ~uint(512);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- Gateway_0xcnzox parallel gateway (join) --->
        // Incoming: from ChoreographyTask_16lc74v (bit 64) and ChoreographyTask_0gnknm9 (bit 512)
        // Since both can arrive at different times, need to check if both have been processed
        // However, as per the pattern, since 128 is set only when both 64 and/or 512 have been processed,
        // We need to check for (no more 64 or 512 active), then move on
        // Outgoing: ChoreographyTask_056ylqg (bit 2048)
        // But activation logic: only when both 64 and 512 are no longer active
        if ((_tokenState & 64 == 0) && (_tokenState & 512 == 0)) {
          _tokenState &= ~uint(128);
          _tokenState |= 2048;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (3 == id && msg.sender == participants[1]) {
          // Transition: deactivate current, activate next state (Gateway_07ncm8m, bit 256)
          _tokenState &= ~uint(2048);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- Gateway_07ncm8m exclusive gateway --->
        // Outgoing: end event (tokenState = 0)
        _tokenState &= ~uint(256);
        _tokenState = 0;
        break;
      }
      break;
    }

    tokenState = _tokenState;
  }
}