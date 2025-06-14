// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:27:17.670Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
  uint public tokenState = 1 << 0;
  address[38] public participants;
  uint public conditions;
  constructor(address[38] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 << 0 != 0) {
        // ChoreographyTask_1 (Order with requiered delivery date)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState ^= 1 << 0;
          _tokenState |= 1 << 1;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 1 != 0) {
        // ParallelGateway sid-8A856537 split
        _tokenState ^= 1 << 1;
        _tokenState |= (1 << 2) | (1 << 3);
        continue;
      }
      if (_tokenState & 1 << 2 != 0) {
        // ChoreographyTask_2 (Confirms order)
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState ^= 1 << 2;
          _tokenState |= 1 << 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 3 != 0) {
        // ChoreographyTask_3 (Confirms order with updated project date)
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState ^= 1 << 3;
          _tokenState |= 1 << 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 4 != 0) {
        // ParallelGateway sid-E9BBA1F8 join
        if ((_tokenState & (1 << 2 | 1 << 3)) == 0) {
          _tokenState ^= 1 << 4;
          _tokenState |= 1 << 5;
          continue;
        }
        break;
      }
      if (_tokenState & 1 << 5 != 0) {
        // ChoreographyTask_4 (Request payment details)
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState ^= 1 << 5;
          _tokenState |= 1 << 6;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 6 != 0) {
        // ParallelGateway sid-C8749F03 split
        _tokenState ^= 1 << 6;
        _tokenState |= (1 << 7) | (1 << 8);
        continue;
      }
      if (_tokenState & 1 << 7 != 0) {
        // ChoreographyTask_5 (Send payment method)
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState ^= 1 << 7;
          _tokenState |= 1 << 9;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 8 != 0) {
        // ChoreographyTask_6 (Request payment details)
        if (id == 6 && msg.sender == participants[11]) {
          _tokenState ^= 1 << 8;
          _tokenState |= 1 << 10;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 9 != 0) {
        // ChoreographyTask_7 (Make payment)
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState ^= 1 << 9;
          _tokenState |= 1 << 11;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 10 != 0) {
        // ChoreographyTask_8 (Receive payment method)
        if (id == 8 && msg.sender == participants[14]) {
          _tokenState ^= 1 << 10;
          _tokenState |= 1 << 12;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 11 != 0) {
        // ChoreographyTask_9 (Make payment)
        if (id == 9 && msg.sender == participants[16]) {
          _tokenState ^= 1 << 11;
          _tokenState |= 1 << 13;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 12 != 0) {
        // ParallelGateway sid-D5B78B78 join
        if ((_tokenState & (1 << 9 | 1 << 11 | 1 << 12)) == 0) {
          _tokenState ^= 1 << 13;
          _tokenState |= (1 << 14) | (1 << 15);
          continue;
        }
        break;
      }
      if (_tokenState & (1 << 14 | 1 << 15) != 0) {
        // ParallelGateway sid-49433071 split
        _tokenState ^= (1 << 14 | 1 << 15);
        _tokenState |= (1 << 16) | (1 << 17);
        continue;
      }
      if (_tokenState & 1 << 16 != 0) {
        // ChoreographyTask_10 (Sends notification first batch)
        if (id == 10 && msg.sender == participants[18]) {
          _tokenState ^= 1 << 16;
          _tokenState |= 1 << 18;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 17 != 0) {
        // ChoreographyTask_11 (Sends shipment)
        if (id == 11 && msg.sender == participants[20]) {
          _tokenState ^= 1 << 17;
          _tokenState |= 1 << 19;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 18 != 0) {
        // ParallelGateway sid-59FD9696 join
        if ((_tokenState & (1 << 16 | 1 << 17)) == 0) {
          _tokenState ^= 1 << 19;
          _tokenState |= 1 << 20;
          continue;
        }
        break;
      }
      if (_tokenState & 1 << 19 != 0) {
        // ChoreographyTask_12 (Notification for the first batch of CPU shipment)
        if (id == 12 && msg.sender == participants[22]) {
          _tokenState ^= 1 << 19;
          _tokenState |= 1 << 21;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 20 != 0) {
        // ChoreographyTask_13 (Sends shipment)
        if (id == 13 && msg.sender == participants[24]) {
          _tokenState ^= 1 << 20;
          _tokenState |= 1 << 22;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 21 != 0) {
        // ExclusiveGateway sid-6F6BBE1D
        _tokenState ^= 1 << 21;
        if (conditions & 1 == 1) {
          _tokenState |= 1 << 23;
        } else {
          _tokenState |= 1 << 24;
        }
        continue;
      }
      if (_tokenState & 1 << 22 != 0) {
        // ChoreographyTask_14 (Makes reclamation)
        if (id == 14 && msg.sender == participants[26]) {
          _tokenState ^= 1 << 22;
          _tokenState |= 1 << 25;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 23 != 0) {
        // ExclusiveGateway sid-F5E250E9
        _tokenState ^= 1 << 23;
        if (conditions & 2 == 2) {
          _tokenState |= 1 << 26;
        } else {
          _tokenState |= 1 << 27;
        }
        continue;
      }
      if (_tokenState & 1 << 24 != 0) {
        // ChoreographyTask_15 (Announces problems with the materials)
        if (id == 15 && msg.sender == participants[28]) {
          _tokenState ^= 1 << 24;
          _tokenState |= 1 << 28;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 25 != 0) {
        // ChoreographyTask_16 (Announces problems with the CPUs)
        if (id == 16 && msg.sender == participants[30]) {
          _tokenState ^= 1 << 25;
          _tokenState |= 1 << 29;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 26 != 0) {
        // ChoreographyTask_17 (Sends reclamation)
        if (id == 17 && msg.sender == participants[32]) {
          _tokenState ^= 1 << 26;
          _tokenState |= 1 << 30;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 27 != 0) {
        // ChoreographyTask_18 (Sends the result from the parts check)
        if (id == 18 && msg.sender == participants[34]) {
          _tokenState ^= 1 << 27;
          _tokenState |= 1 << 31;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 28 != 0) {
        // ExclusiveGateway sid-7D650B82 join
        if ((_tokenState & (1 << 26 | 1 << 27 | 1 << 28 | 1 << 29 | 1 << 30 | 1 << 31)) == 0) {
          _tokenState ^= 1 << 31;
          _tokenState |= 1 << 32;
          continue;
        }
        break;
      }
      if (_tokenState & 1 << 29 != 0) {
        // ChoreographyTask_19 (Sends the results from the diagnostics)
        if (id == 19 && msg.sender == participants[36]) {
          _tokenState ^= 1 << 29;
          _tokenState |= 1 << 33;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 << 30 != 0) {
        // ParallelGateway sid-7D650B82 join
        if ((_tokenState & (1 << 26 | 1 << 27 | 1 << 28 | 1 << 29 | 1 << 30 | 1 << 31)) == 0) {
          _tokenState ^= 1 << 33;
          _tokenState = 0;
          break;
        }
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
