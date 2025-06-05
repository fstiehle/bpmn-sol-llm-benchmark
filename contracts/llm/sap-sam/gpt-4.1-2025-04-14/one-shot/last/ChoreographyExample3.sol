// test GPT 4.1 - One Shot at 2025-06-05T15:16:59.975Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_ChoreographyExample3 {
  uint public tokenState = 1;
  address[3] public participants;
  uint public conditions;

  // Task IDs:
  // 0: ChoreographyTask_1vnykqp ("Order goods") - initiator: participants[0] (Customer)
  // 1: ChoreographyTask_16lc74v ("Produce goods") - initiator: participants[1] (Seller)
  // 2: ChoreographyTask_07t2zjo ("Inform customer") - initiator: participants[1] (Seller)
  // 3: ChoreographyTask_056ylqg ("Ship goods") - initiator: participants[1] (Seller)
  // 4: ChoreographyTask_0n57gae ("Confirm order") - initiator: participants[0] (Customer)
  // 5: ChoreographyTask_0gnknm9 ("Confirm ETA") - initiator: participants[1] (Seller)

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
          // Deactivate current, activate next state (Gateway_1bpkhpg)
          _tokenState &= ~uint(1);
          // Gateway_1bpkhpg: Exclusive, default is Flow_0ymdsa2 to ChoreographyTask_07t2zjo (unavailable)
          // Other path: Flow_067nql1 to ChoreographyTask_0n57gae if (conditions & 1 == 1)
          // We encode both paths as bits 2 (ChoreographyTask_07t2zjo) and 16 (ChoreographyTask_0n57gae) as possible, but only one will be enabled.
          // Immediate gateway resolution required; handled below.
          // We'll encode a special token: 64 (Gateway_1bpkhpg ACTIVE)
          _tokenState |= 64;
          continue;
        }
      }

      // <--- Gateway_1bpkhpg (Exclusive) --->
      if (_tokenState & 64 == 64) {
        // Outgoing:
        // - Flow_067nql1 (to ChoreographyTask_0n57gae) if (conditions & 1 == 1)
        // - default Flow_0ymdsa2 (to ChoreographyTask_07t2zjo)
        if ((conditions & 1) == 1) {
          // Activate ChoreographyTask_0n57gae (bit 16)
          _tokenState &= ~uint(64);
          _tokenState |= 16;
          continue;
        } else {
          // Default: Activate ChoreographyTask_07t2zjo (bit 4)
          _tokenState &= ~uint(64);
          _tokenState |= 4;
          continue;
        }
      }

      // <--- ChoreographyTask_07t2zjo Inform customer --->
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[1]) {
          // Deactivate current, activate next (Gateway_07ncm8m)
          _tokenState &= ~uint(4);
          // Gateway_07ncm8m is default to end event, so no further tasks.
          // We'll encode a special token: 128 (Gateway_07ncm8m ACTIVE)
          _tokenState |= 128;
          continue;
        }
      }

      // <--- ChoreographyTask_0n57gae Confirm order --->
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[0]) {
          // Deactivate current, activate next (Gateway_1klfaw3)
          _tokenState &= ~uint(16);
          // Gateway_1klfaw3 is parallel, outgoings to ChoreographyTask_16lc74v (bit 2) and ChoreographyTask_0gnknm9 (bit 32)
          // We encode a special token: 256 (Gateway_1klfaw3 ACTIVE)
          _tokenState |= 256;
          continue;
        }
      }

      // <--- Gateway_1klfaw3 (Parallel) --->
      if (_tokenState & 256 == 256) {
        // Outgoing: both ChoreographyTask_16lc74v (bit 2), ChoreographyTask_0gnknm9 (bit 32)
        _tokenState &= ~uint(256);
        _tokenState |= 2 | 32;
        continue;
      }

      // <--- ChoreographyTask_16lc74v Produce goods --->
      if (_tokenState & 2 == 2) {
        if (id == 1 && msg.sender == participants[1]) {
          // Deactivate current, activate next (Gateway_0xcnzox)
          _tokenState &= ~uint(2);
          // We'll keep track of completions for the parallel gateway.
          // If ChoreographyTask_0gnknm9 is also completed, then activate ChoreographyTask_056ylqg
          // We'll encode a special bit 512 to indicate Gateway_0xcnzox entry from Produce goods
          _tokenState |= 512;
          continue;
        }
      }

      // <--- ChoreographyTask_0gnknm9 Confirm ETA --->
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[1]) {
          // Deactivate current, activate next (Gateway_0xcnzox)
          _tokenState &= ~uint(32);
          // We'll encode a special bit 1024 to indicate Gateway_0xcnzox entry from Confirm ETA
          _tokenState |= 1024;
          continue;
        }
      }

      // <--- Gateway_0xcnzox (Parallel join) --->
      // Both 512 and 1024 must be set to proceed
      if ((_tokenState & 512 == 512) && (_tokenState & 1024 == 1024)) {
        // Both parallel branches done, activate ChoreographyTask_056ylqg (bit 8)
        _tokenState &= ~uint(512 | 1024);
        _tokenState |= 8;
        continue;
      }

      // <--- ChoreographyTask_056ylqg Ship goods --->
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[1]) {
          // Deactivate current, activate next (Gateway_07ncm8m)
          _tokenState &= ~uint(8);
          // Gateway_07ncm8m is default to end event, so no further tasks.
          // We'll encode a special token: 128 (Gateway_07ncm8m ACTIVE)
          _tokenState |= 128;
          continue;
        }
      }

      // <--- Gateway_07ncm8m (Exclusive to End) --->
      if (_tokenState & 128 == 128) {
        // End event, process terminates
        _tokenState = 0;
        break;
      }

      break;
    }

    tokenState = _tokenState;
  }
}