// test openai/gpt-4.1 - two-shot at 2025-06-12T00:16:17.459Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_2c61ff7b_9ab6_4f18_8fb3_b0ee07063796 {
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
      // <--- sid-F8B59DBC-ED47-4B8F-ACA3-20D0F0DF5912 Hotline Nummer anrufen --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-E6FB3735-4DCA-4351-B664-1DB8C2A399ED Problem loesen --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- sid-55992533-D483-47A2-A8EB-A57D54E90671 Problem geloest --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-C94BD69F-B1D0-4B2C-AA74-F9642D192B77 Problem loesen --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-44C6DF0F-F542-48D3-AA84-060FB3AA84AC Dauer und Kosten notieren --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-7DA23953-05F7-4AE3-B816-04E2D5DCB1DE Exclusive Gateway --->
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // <--- conditions & 1 == 1 --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          transitioned = true;
        }
        if (!transitioned) {
          // <--- default flow --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }
      // <--- sid-E6C9E62B-89DF-46A4-A103-DEC81EE82060 auto from Problem loesen to Dauer und Kosten notieren --->
      if (_tokenState & 16 == 16) {
        // After sid-C94BD69F-B1D0-4B2C-AA74-F9642D192B77
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}