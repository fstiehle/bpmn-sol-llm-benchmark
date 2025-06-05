// test GPT Model - Two Shot at 2025-06-05T15:19:14.578Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_two_shot_ChoreographyExample3 {
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
    // Parallel gateway active flow tracking
    uint8 par_Gateway_1klfaw3; // 2 bits, [produce,eta]
    uint8 par_Gateway_0xcnzox; // 2 bits, [produce,eta] --> next is ship

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1vnykqp Order goods --->
        if (0 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Exclusive Gateway_1bpkhpg --->
        if (conditions & 1 == 1) {
          // <--- ChoreographyTask_0n57gae Confirm order --->
          if (4 == id && msg.sender == participants[0]) {
            _tokenState &= ~uint(2);
            _tokenState |= 4;
            continue;
          }
        } else {
          // <--- ChoreographyTask_07t2zjo Inform customer --->
          if (2 == id && msg.sender == participants[1]) {
            _tokenState &= ~uint(2);
            _tokenState |= 32;
            continue;
          }
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Parallel Gateway_1klfaw3 --->
        // Two outgoing: ChoreographyTask_16lc74v (produce goods, 1), ChoreographyTask_0gnknm9 (confirm ETA, 5)
        // Use bits to track both branches
        // Set both bits active after confirm order
        par_Gateway_1klfaw3 = 3; // both bits on
        _tokenState &= ~uint(4);
        _tokenState |= 8 | 16;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_16lc74v Produce goods --->
        if (1 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(8);
          par_Gateway_1klfaw3 &= ~uint8(1); // clear produce
          // Go to Gateway_0xcnzox input
          par_Gateway_0xcnzox |= 1; // mark produce done
          if (par_Gateway_1klfaw3 == 0) {
            // If both parallel tasks done, deactivate parallel gateway
            _tokenState &= ~uint(16);
          }
          // If both Gateway_0xcnzox inputs collected, activate next
          if (par_Gateway_0xcnzox == 3) {
            _tokenState |= 64; // Activate ship goods (ChoreographyTask_056ylqg, 3)
          }
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_0gnknm9 Confirm ETA --->
        if (5 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(16);
          par_Gateway_1klfaw3 &= ~uint8(2); // clear eta
          par_Gateway_0xcnzox |= 2; // mark eta done
          if (par_Gateway_1klfaw3 == 0) {
            _tokenState &= ~uint(8);
          }
          if (par_Gateway_0xcnzox == 3) {
            _tokenState |= 64; // Activate ship goods
          }
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_07t2zjo Inform customer --->
        if (2 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_056ylqg Ship goods --->
        if (3 == id && msg.sender == participants[1]) {
          _tokenState &= ~uint(64);
          _tokenState = 0; // End event reached
          break;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- End branch after Inform customer --->
        _tokenState &= ~uint(128);
        _tokenState = 0;
        break;
      }
      break;
    }

    tokenState = _tokenState;
  }
}