// test openai/gpt-4.1 - two-shot at 2025-06-11T18:34:09.470Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
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
    while(_tokenState != 0) {
      // sid-227226E5-6AEA-41EF-A8B0-83C9A219227F Make travel offer
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA Reject offer
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      // sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0 Book Travel__confirm booking
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-A70C991E-702F-4C96-9488-D630468D3804 Pay Travel
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-46204067-2C7E-484E-8BC3-5979178FE4C4 Order ticket
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64|128;
          id = 0;
          continue;
        }
      }
      // sid-D456077E-5BB6-474E-88EC-5C0B045B5F78 Confirm payment
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[11]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      // sid-85CDD208-375B-493C-808D-239AB05D7F30 Refuse payment
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      // gateway sid-757D9B45_2990_4D72_BFA2_4DEC61AA8DA4 (event-based, exclusive)
      if (_tokenState & 2 == 2) {
        // two possible outgoing: sid-84706E17-ABF5-43EB-8031-643E1E824B89 (to Reject offer)/sid-B12CEDDB-9044-460F-BDC2-355C50A69040 (to Book Travel__confirm booking)
        // No explicit conditions, both flows possible, handled by external enact() of either task 2 or 3.
        // The next task is enabled by enact() call, so break here.
        break;
      }
      // gateway sid-4334BA60_223E_4C5F_9305_20B14D486830 (event-based, exclusive)
      if (_tokenState & 256 == 256) {
        // two possible outgoing: sid-3B09B51C-0CC9-48D6-98A6-0203014F9932 (to Confirm payment)/sid-2782F900-FF89-431C-B548-2ED4C1738816 (to Refuse payment)
        // No explicit conditions, both flows possible, handled by external enact() of either task 6 or 7.
        // The next task is enabled by enact() call, so break here.
        break;
      }
      // auto transition after Book Travel__confirm booking (task 3) to Pay Travel (task 4)
      if (_tokenState & 16 == 16 && id == 0) {
        // No gateway, just pass to Pay Travel
        // already handled above in task logic
        break;
      }
      // auto transition after Pay Travel (task 4) to Order ticket (task 5)
      if (_tokenState & 32 == 32 && id == 0) {
        // already handled above in task logic
        break;
      }
      // auto transition after Order ticket (task 5) to both Confirm payment (task 6) and Refuse payment (task 7) (via event-based gateway)
      if (_tokenState & 160 == 160) { // both Confirm payment and Refuse payment are active => done when both executed
        // nothing to do; wait for user to enact either task 6 or 7
        break;
      }
      // auto transition after Reject offer (task 2) to end
      if (_tokenState == 0) {
        break;
      }
      // auto transition after Confirm payment (task 6) or Refuse payment (task 7) to end
      if (_tokenState == 0) {
        break;
      }
      // parallelism not required; all splits are exclusive or handled via bitmasks above
      break;
    }
    tokenState = _tokenState;
  }
}
