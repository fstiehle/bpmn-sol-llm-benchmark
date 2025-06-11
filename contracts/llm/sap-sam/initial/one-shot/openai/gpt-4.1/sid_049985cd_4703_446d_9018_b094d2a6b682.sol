// test openai/gpt-4.1 - one-shot at 2025-06-11T18:32:03.941Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
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

      // Make_travel_offer sid-227226E5-6AEA-41EF-A8B0-83C9A219227F, id=1, initiator=participants[1]
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
          // custom code for Make_travel_offer
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // Reject_offer sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA, id=2, initiator=participants[2]
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for Reject_offer
          _tokenState &= ~uint(4);
          // End event: Offer_canceled, terminate process
          _tokenState = 0;
          break;
        }
      }

      // Book_Travel_and_confirm_booking sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0, id=3, initiator=participants[4]
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for Book_Travel_and_confirm_booking
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }

      // Pay_Travel sid-A70C991E-702F-4C96-9488-D630468D3804, id=4, initiator=participants[6]
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for Pay_Travel
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      // Order_ticket sid-46204067-2C7E-484E-8BC3-5979178FE4C4, id=5, initiator=participants[8]
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // custom code for Order_ticket
          _tokenState &= ~uint(32);
          _tokenState |= 192;
          id = 0;
          continue;
        }
      }

      // Confirm_payment sid-D456077E-5BB6-474E-88EC-5C0B045B5F78, id=6, initiator=participants[11]
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[11]) {
          // custom code for Confirm_payment
          _tokenState &= ~uint(64);
          // End event: Offer_canceled, terminate process
          _tokenState = 0;
          break;
        }
      }

      // Refuse_payment sid-85CDD208-375B-493C-808D-239AB05D7F30, id=7, initiator=participants[13]
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[13]) {
          // custom code for Refuse_payment
          _tokenState &= ~uint(128);
          // End event: Offer_canceled, terminate process
          _tokenState = 0;
          break;
        }
      }

      // Exclusive Gateway sid-757D9B45_2990_4D72_BFA2_4DEC61AA8DA4 (after Make_travel_offer)
      // Bit: 2
      if (_tokenState & 2 == 2) {
        // The gateway has two outgoing sequenceFlows:
        // - To Reject_offer (bit 4)
        // - To Book_Travel_and_confirm_booking (bit 8)
        // No explicit conditions, so must choose one. We assume the choreography requires external action (via task execution) to select the path.
        // Therefore, we "activate" both but only the correct task can be enacted.
        _tokenState &= ~uint(2);
        _tokenState |= 12; // bits 4 (Reject_offer) and 8 (Book_Travel_and_confirm_booking)
        continue;
      }

      // Exclusive Gateway sid-4334BA60_223E_4C5F_9305_20B14D486830 (after Order_ticket)
      // Bits: 192 = 64 + 128
      if (_tokenState & 192 == 192) {
        // Both Confirm_payment (64) and Refuse_payment (128) are enabled
        // Only one will be actually executed due to valid initiator
        // After either, flow ends in Offer_canceled/end event
        break; // Wait for either Confirm_payment or Refuse_payment
      }

      // End Event sid-3AC96AC1_6DA1_4836_9C0E_F9EDB21DB603: reached after any end task
      if (_tokenState == 0) {
        break;
      }

      // If no more progress, exit
      break;
    }
    tokenState = _tokenState;
  }
}
