// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:35:47.740Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_628f8db4_6e66_4dbc_bf51_0a06087845fd {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-0D901C54-7C0B-4A1B-B120-22FF30DA505E Seminaranfrage weiterleiten --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-7361E9A9-0DEB-45D2-962E-6E3B1F835921 Angebot versenden --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-6C8FFED6-E7B4-4F20-9CCB-3D7EB1D99518 Wuensche zusenden --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-5F1A9D5C-4FC4-44D4-A6D2-669732D469BA Angebot annehmen --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-05E87F86-112D-4E1F-AA7D-93A34F85B3AF Exclusive Gateway (Converging) --->
        // <--- auto transition (default to sid-E29986AA-BC50-43A7-95D9-443D732228AA) --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C7841A0C-3408-403E-8A15-16F91CDC56FD Event-Based Gateway (Ergaenzende Wuensche?) --->
        if (conditions & 1 == 1) {
          // <--- condition for sid-D8B7E1E8-2F7B-411A-A0A7-2B7961EBD0C2 "Ja" --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        } else {
          // <--- condition for sid-4A2EF321-9B70-4469-B8CF-6F22439A7F76 "Nein" --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}