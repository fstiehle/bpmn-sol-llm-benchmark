// test GPT Model - Two Shot at 2025-06-05T15:19:25.740Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_two_shot_ChoreographyExample4 {
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
        if (conditions & 1 == 1) {
          // <--- ChoreographyTask_0belpst Confirm ETA --->
          // Transition: deactivate current, activate next state
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        } else {
          // <--- Parallel Gateway Gateway_1klfaw3, activate both branches --->
          _tokenState &= ~uint(2);
          _tokenState |= 12;
          continue; 
        }
      }
      // Parallel Gateway after default flow: Gateway_1klfaw3, two tasks can occur in any order, then synchronize
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (1 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(4);
        // if both parallel tasks are done, move to the join
        if ((_tokenState & 8) == 0) {
          // Finished both parallel tasks, move to Gateway_0xcnzox
          _tokenState |= 32;
        }
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (2 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(8);
        // if both parallel tasks are done, move to the join
        if ((_tokenState & 4) == 0) {
          // Finished both parallel tasks, move to Gateway_0xcnzox
          _tokenState |= 32;
        }
        continue; 
        }
      }
      // Parallel join: Gateway_0xcnzox
      if (_tokenState & 32 == 32) {
        // <--- auto transition to Gateway_1yl9mch --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }
      // Exclusive Gateway: Gateway_1yl9mch, only one outgoing (default) to Gateway_069256q
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_0belpst Confirm ETA --->
        if (4 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- Gateway_069256q exclusive gateway --->
        if (conditions & 2 == 2) {
          // <--- ChoreographyTask_056ylqg Ship goods --->
          if (3 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
          }
        } else {
          // <--- Pickup (end event) --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (3 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}