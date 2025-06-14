// test openai/gpt-4.1 - one-shot at 2025-06-11T23:28:27.959Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_22f8068f_fb74_4899_893d_d4c2e98fbf20 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // ChoreographyTask sid-E5490C4B-C24A-431D-B77A-49760BB4CCB8 (Generate_Purchase_Request)
      if (_tokenState & 1 == 1) {
        // Only Warehouse_Management (participants[1]) can enact
        if (1 == id && msg.sender == participants[1]) {
          // <--- custom code for Generate_Purchase_Request here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask sid-AB28E743-A241-4766-9C91-DAFABA0E39D1 (Generate_Purchase_Order)
      if (_tokenState & 2 == 2) {
        // Only Purchasing (participants[2]) can enact
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for Generate_Purchase_Order here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask sid-A91EF0BA-F5C4-42CE-8076-0197BA6E0E9D (Generate_Invoice)
      if (_tokenState & 4 == 4) {
        // Only Vendor (participants[5]) can enact
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for Generate_Invoice here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask sid-2150BBD8-18C8-4D8C-A164-2D07C84B7011 (Process_Payment)
      if (_tokenState & 8 == 8) {
        // Only Accounting (participants[6]) can enact
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for Process_Payment here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}