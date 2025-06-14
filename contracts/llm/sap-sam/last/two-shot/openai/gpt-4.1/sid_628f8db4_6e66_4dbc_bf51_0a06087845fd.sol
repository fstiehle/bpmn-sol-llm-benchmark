// test openai/gpt-4.1 - two-shot at 2025-06-12T01:08:17.868Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_628f8db4_6e66_4dbc_bf51_0a06087845fd {
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
      // sid-0D901C54-7C0B-4A1B-B120-22FF30DA505E Seminaranfrage weiterleiten
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-7361E9A9-0DEB-45D2-962E-6E3B1F835921 Angebot versenden
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-6C8FFED6-E7B4-4F20-9CCB-3D7EB1D99518 Wuensche zusenden
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-5F1A9D5C-4FC4-44D4-A6D2-669732D469BA Angebot annehmen
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      // ExclusiveGateway sid-05E87F86_112D_4E1F_AA7D_93A34F85B3AF (Converging)
      if (_tokenState & 2 == 2) {
        // auto transition to sid-7361E9A9-0DEB-45D2-962E-6E3B1F835921 (Angebot versenden)
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      // EventBasedGateway sid-C7841A0C_3408_403E_8A15_16F91CDC56FD (Diverging)
      if (_tokenState & 8 == 8) {
        // The event-based gateway has two outgoing flows: "Nein" and "Ja"
        // "Nein" -> sid-5F1A9D5C-4FC4-44D4-A6D2-669732D469BA (Angebot annehmen)
        // "Ja"   -> sid-6C8FFED6-E7B4-4F20-9CCB-3D7EB1D99518 (Wuensche zusenden)
        // This gateway is event-based: next task depends on which is enacted next, so we activate both.
        _tokenState &= ~uint(8);
        _tokenState |= 80; // 64 | 16
        continue;
      }
      // sid-C5538022-E134-48BB-BE09-3939E0B50F52 and sid-6DF52578-E198-4206-87D0-08E6A040C632 are sequence flows and not tracked in tokenState
      break;
    }
    tokenState = _tokenState;
  }
}