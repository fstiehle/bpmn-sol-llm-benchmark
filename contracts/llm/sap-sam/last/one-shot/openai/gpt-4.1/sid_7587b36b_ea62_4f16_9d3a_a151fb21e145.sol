// test openai/gpt-4.1 - one-shot at 2025-06-11T23:50:15.712Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_7587b36b_ea62_4f16_9d3a_a151fb21e145 {
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
      // <--- sid-B12D1FA0-2A7A-4047-BBE1-1513753A1920 Make_travel_offer --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task 1 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-D67A86B4-8828-4891-8746-014EC74F0330 Reject_offer --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task 2 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // <--- sid-8F01D694-17C7-455C-9CF0-882221C2B676 Book_travel --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task 3 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- sid-F0B0307D-27F6-4D4B-B922-3CF229321E40 Pay_travel --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task 4 here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-B42401DD-F1BD-47A4-A854-01E6A66D12FF Order_ticket --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task 5 here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- sid-E5E15A79-4F3E-4236-A0B7-D869B828DD8A Confirm_payment --->
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task 6 here --->
        _tokenState &= ~uint(256);
        // End event reached
        _tokenState = 0;
        break;
        }
      }
      // <--- sid-8B3FC931-BDFA-4E9B-9C1D-B12AAE6E7AF5 Refuse_payment --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task 7 here --->
        _tokenState &= ~uint(512);
        // End event reached
        _tokenState = 0;
        break;
        }
      }

      // <--- Exclusive Gateway sid-C7EB2D3C_08B5_4C19_AB2D_94B9D75B01DB: after Make_travel_offer --->
      if (_tokenState & 2 == 2) {
        // sid-C7EB2D3C-08B5-4C19-AB2D-94B9D75B01DB
        // Two outgoing: offer_rejected (sid-448C76DD-27E9-4EBD-9E8B-404F8C69D281) to Reject_offer, offer_accepted (sid-CAE7B32D-FC73-4ECD-AEAC-46E0138CEBE0) to Book_travel
        // No explicit conditions in the XML, so we default to two branches - one to Reject_offer, one to Book_travel
        // We model this as: if (conditions & 1 == 1) -> Reject_offer, else -> Book_travel (sid-8F01D694-17C7-455C-9CF0-882221C2B676)
        if (conditions & 1 == 1) {
          // offer rejected branch
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // offer accepted branch
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }

      // <--- sid-8F01D694-17C7-455C-9CF0-882221C2B676 Book_travel to Pay_travel --->
      // Already handled above as direct transition (sid-97B3813A-43C9-4BEA-AC05-7CB04BBA8B2A)

      // <--- sid-F0B0307D-27F6-4D4B-B922-3CF229321E40 Pay_travel to Order_ticket --->
      // Already handled above as direct transition (sid-08CE8A3D-F695-4179-93BB-FA822233BDD5)

      // <--- sid-B42401DD-F1BD-47A4-A854-01E6A66D12FF Order_ticket to sid-71D5F32C_A4D2_4E4E_AF83_4699C43A254D gateway --->
      if (_tokenState & 64 == 64) {
        // sid-71D5F32C-A4D2-4E4E-AF83-4699C43A254D, event-based gateway
        // Two outgoing: payment_confirmed (sid-7D8B07D5-543E-40FC-98F7-DAEE2B94A0D1) to Confirm_payment
        //               payment_refused   (sid-42EB3681-6374-4554-82CE-2D053FC37BFC) to Refuse_payment
        // We'll model: if (conditions & 2 == 2) -> Confirm_payment, else -> Refuse_payment
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          continue;
        }
      }

      // <--- sid-D67A86B4-8828-4891-8746-014EC74F0330 Reject_offer to End --->
      if (_tokenState & 128 == 128) {
        // End event
        _tokenState = 0;
        break;
      }

      break;
    }
    tokenState = _tokenState;
  }
}