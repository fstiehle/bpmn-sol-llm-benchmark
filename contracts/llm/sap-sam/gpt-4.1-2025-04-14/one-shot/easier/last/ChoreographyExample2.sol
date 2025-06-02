// test GPT 4.1 - One Shot with easier example at 2025-06-02T19:30:42.698Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_easier_ChoreographyExample2 {
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
        // <--- custom code for task here --->
        _tokenState &= ~uint(1); // clear bit
        _tokenState |= 2; // move to exclusiveGateway_1bpkhpg
        continue;
        }
      }
      // Exclusive Gateway: Gateway_1bpkhpg is represented by tokenState=2
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- ChoreographyTask_0n57gae Confirm order --->
          if (4 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 128; // move to Gateway_1yl9mch via Flow_18tih6y
          continue;
          }
        } else {
          // Default branch: "unavailable"
          // Parallel Gateway_1klfaw3 reached, token splits to two parallel tasks
          _tokenState &= ~uint(2);
          _tokenState |= 4 | 8; // ChoreographyTask_16lc74v, ChoreographyTask_07t2zjo
          continue;
        }
      }
      // Parallel path: ChoreographyTask_16lc74v Produce goods
      if (_tokenState & 4 == 4) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16; // mark arrival at Gateway_0xcnzox
        continue;
        }
      }
      // Parallel path: ChoreographyTask_07t2zjo Inform customer
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32; // mark arrival at Gateway_0xcnzox
        continue;
        }
      }
      // Synchronize parallel: Gateway_0xcnzox (wait for both paths)
      if (_tokenState & 48 == 48) { // 16 (from produce) | 32 (from inform)
        _tokenState &= ~uint(48);
        _tokenState |= 64; // move to Gateway_1yl9mch
        continue;
      }
      // After Confirm order: Gateway_1yl9mch
      if (_tokenState & 128 == 128) {
        _tokenState &= ~uint(128);
        _tokenState |= 256; // ChoreographyTask_056ylqg Ship goods
        continue;
      }
      // After parallel: Gateway_1yl9mch
      if (_tokenState & 64 == 64) {
        _tokenState &= ~uint(64);
        _tokenState |= 256; // ChoreographyTask_056ylqg Ship goods
        continue;
      }
      // ChoreographyTask_056ylqg Ship goods
      if (_tokenState & 256 == 256) {
        if (3 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0; // end event
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}