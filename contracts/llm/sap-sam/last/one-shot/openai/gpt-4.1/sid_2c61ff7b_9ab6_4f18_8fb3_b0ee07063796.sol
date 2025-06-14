// test openai/gpt-4.1 - one-shot at 2025-06-11T23:31:53.978Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2c61ff7b_9ab6_4f18_8fb3_b0ee07063796 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-F8B59DBC-ED47-4B8F-ACA3-20D0F0DF5912 HotlineNummer anrufen --->
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-E6FB3735-4DCA-4351-B664-1DB8C2A399ED Problem loesen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway sid-7DA23953-05F7-4AE3-B816-04E2D5DCB1DE
      if (_tokenState & 4 == 4) {
        // sid-D00B2ED7-6927-4B7B-877F-F6FC4977E2BE: conditions & 1 == 1 --> sid-C94BD69F-B1D0-4B2C-AA74-F9642D192B77
        // default sid-4F697A2E-74F8-4F4B-8553-862A9B72AB5B --> sid-55992533-D483-47A2-A8EB-A57D54E90671
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-55992533-D483-47A2-A8EB-A57D54E90671 Problem geloest --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-C94BD69F-B1D0-4B2C-AA74-F9642D192B77 Problem loesen (Techniker) --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-44C6DF0F-F542-48D3-AA84-060FB3AA84AC Dauer und Kosten notieren --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}