// test GPT Model - Two Shot at 2025-06-05T15:18:30.035Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_two_shot_ChoreographyExample {
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
        // Transition: deactivate current, activate next state (to Gateway_1bpkhpg)
        _tokenState &= ~uint(1);
        // At exclusive gateway: Gateway_1bpkhpg
        // Two possible outgoing: Flow_067nql1 (cond) and Flow_0ymdsa2 (default)
        // We'll encode both possible paths as a bitmask (2 for cond branch, 4 for default/parallel)
        if (conditions & 1 == 1) {
          // Exclusive branch (Flow_067nql1): to Gateway_1yl9mch
          _tokenState |= 2;
        } else {
          // Default branch (Flow_0ymdsa2): to Gateway_1klfaw3 (parallel)
          _tokenState |= 4;
        }
        continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // <--- Gateway_1yl9mch (wait for both incoming, but only one ever active here) --->
        // Only one incoming at a time; direct to Ship goods
        // Transition: auto to ChoreographyTask_056ylqg (taskID 3)
        _tokenState &= ~uint(2);
        _tokenState |= 16;
        continue;
      }

      if (_tokenState & 4 == 4) {
        // <--- Gateway_1klfaw3 (parallel split) --->
        // Both outgoing: to ChoreographyTask_16lc74v (1), ChoreographyTask_07t2zjo (2)
        // Activate both tasks
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 32;
        continue;
      }

      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (1 == id && msg.sender == participants[1]) {
        // Outgoing: to Gateway_0xcnzox (parallel join)
        _tokenState &= ~uint(8);
        // Mark that this branch is done; check if the other parallel path is also done
        // We'll use 32 for ChoreographyTask_07t2zjo (Inform customer)
        // If both are done, advance to Gateway_0xcnzox
        if ((_tokenState & 32) == 0) {
          // Only this branch done, wait for the other
          // Do nothing (stay in state)
        } else {
          // Both parallel branches done, advance
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (2 == id && msg.sender == participants[1]) {
        // Outgoing: to Gateway_0xcnzox (parallel join)
        _tokenState &= ~uint(32);
        if ((_tokenState & 8) == 0) {
          // Only this branch done, wait for the other
          // Do nothing (stay in state)
        } else {
          // Both parallel branches done, advance
          _tokenState &= ~uint(8);
          _tokenState |= 64;
        }
        continue;
        }
      }

      if (_tokenState & 64 == 64) {
        // <--- Gateway_0xcnzox (parallel join) --->
        // Outgoing: to Gateway_1yl9mch
        _tokenState &= ~uint(64);
        _tokenState |= 2;
        continue;
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (3 == id && msg.sender == participants[1]) {
        // Outgoing: to end event
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}