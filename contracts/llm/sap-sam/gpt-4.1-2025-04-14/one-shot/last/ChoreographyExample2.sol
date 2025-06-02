// test GPT 4.1 - One Shot at 2025-06-02T19:29:00.700Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample2 {
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

      // <--- ChoreographyTask_1vnykqp Order goods --->
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          // After Order goods, flow goes to exclusive gateway Gateway_1bpkhpg
          // If (conditions & 1 == 1): available branch -> ChoreographyTask_0n57gae
          // Else: default branch -> Gateway_1klfaw3 (parallel: ChoreographyTask_16lc74v and ChoreographyTask_07t2zjo)
          if (conditions & 1 == 1) {
            // available -> ChoreographyTask_0n57gae (Confirm order)
            _tokenState |= 2;
          } else {
            // unavailable -> parallel: ChoreographyTask_16lc74v and ChoreographyTask_07t2zjo
            _tokenState |= 4 | 8;
          }
          break;
        }
      }

      // <--- ChoreographyTask_0n57gae Confirm order --->
      if (_tokenState & 2 == 2) {
        if (id == 4 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          // After Confirm order, flow goes to Gateway_1yl9mch, which only has one outgoing to ChoreographyTask_056ylqg
          _tokenState |= 16;
          break;
        }
      }

      // <--- ChoreographyTask_16lc74v Produce goods --->
      if (_tokenState & 4 == 4) {
        if (id == 1 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          // After Produce goods, goes to Gateway_0xcnzox (parallel join)
          // When both ChoreographyTask_16lc74v AND ChoreographyTask_07t2zjo are done, flow continues
          if (_tokenState & 8 == 0) {
            // both parallel tasks done
            _tokenState |= 32;
          }
          break;
        }
      }

      // <--- ChoreographyTask_07t2zjo Inform customer --->
      if (_tokenState & 8 == 8) {
        if (id == 2 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          // After Inform customer, goes to Gateway_0xcnzox (parallel join)
          // When both ChoreographyTask_16lc74v AND ChoreographyTask_07t2zjo are done, flow continues
          if (_tokenState & 4 == 0) {
            // both parallel tasks done
            _tokenState |= 32;
          }
          break;
        }
      }

      // <--- ChoreographyTask_056ylqg Ship goods --->
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          // After Ship goods, flow ends (endEvent)
          _tokenState = 0;
          break;
        }
      }

      // <--- After parallel join (Gateway_0xcnzox), move to Gateway_1yl9mch, then to ChoreographyTask_056ylqg --->
      if (_tokenState & 32 == 32) {
        // Both parallel tasks done, move to Ship goods
        _tokenState &= ~uint(32);
        _tokenState |= 16;
        continue;
      }

      break;
    }

    tokenState = _tokenState;
  }
}