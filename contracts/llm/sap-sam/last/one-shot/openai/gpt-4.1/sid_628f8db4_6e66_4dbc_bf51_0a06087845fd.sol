// test openai/gpt-4.1 - one-shot at 2025-06-11T23:44:20.534Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_628f8db4_6e66_4dbc_bf51_0a06087845fd {
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
        // <--- sid_0D901C54_7C0B_4A1B_B120_22FF30DA505E Seminaranfrage_weiterleiten --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_7361E9A9_0DEB_45D2_962E_6E3B1F835921 Angebot_versenden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_6C8FFED6_E7B4_4F20_9CCB_3D7EB1D99518 Wuensche_zusenden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_5F1A9D5C_4FC4_44D4_A6D2_669732D469BA Angebot_annehmen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
        }
      }
      // Exclusive Gateway sid_05E87F86_112D_4E1F_AA7D_93A34F85B3AF
      if (_tokenState & 2 == 2) {
        // sid_05E87F86_112D_4E1F_AA7D_93A34F85B3AF has incoming from sid_0D901C54... and sid_6C8FFED6...
        // Wait for sid_0D901C54... (bit 1) and sid_6C8FFED6... (bit 8).
        // But only sid_0D901C54... (bit 1) or sid_6C8FFED6... (bit 8) can be active at a time.
        // However, both can activate the gateway (see model).
        // If both bits (2) are set, process gateway.
        // sid_05E87F86_112D_4E1F_AA7D_93A34F85B3AF: bit 2
        // outgoing: sid-E29986AA... (to sid_7361E9A9...) (bit 4)
        // default outgoing: sid-E29986AA... (there is only one outgoing sequenceFlow with no condition)
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      // EventBasedGateway sid_C7841A0C_3408_403E_8A15_16F91CDC56FD
      if (_tokenState & 4 == 4) {
        // sid_7361E9A9... Aufgabe completed, now gateway checks for user input
        // sid-C7841A0C-3408-403E-8A15-16F91CDC56FD: bit 4
        // outgoing: sid-4A2EF321... ("Nein") -> sid_5F1A9D5C_4FC4_44D4_A6D2_669732D469BA (bit 16)
        // outgoing: sid-D8B7E1E8... ("Ja") -> sid_6C8FFED6_E7B4_4F20_9CCB_3D7EB1D99518 (bit 8)
        // We use 'conditions' variable to encode the branch: if (conditions & 1 == 1) go "Ja", else "Nein"
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}