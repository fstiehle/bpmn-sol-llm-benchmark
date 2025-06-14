// test openai/gpt-4.1 - one-shot at 2025-06-11T23:23:56.241Z
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
      // <--- sid-227226E5-6AEA-41EF-A8B0-83C9A219227F Make travel offer --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for Make travel offer --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA Reject offer --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Reject offer --->
        _tokenState &= ~uint(4);
        // End event: Offer canceled
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0 Book Travel_and_confirm booking --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Book Travel_and_confirm booking --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- sid-A70C991E-702F-4C96-9488-D630468D3804 Pay Travel --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Pay Travel --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-46204067-2C7E-484E-8BC3-5979178FE4C4 Order ticket --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Order ticket --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- sid-D456077E-5BB6-474E-88EC-5C0B045B5F78 Confirm payment --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for Confirm payment --->
        _tokenState &= ~uint(128);
        // End event: Offer canceled
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-85CDD208-375B-493C-808D-239AB05D7F30 Refuse payment --->
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for Refuse payment --->
        _tokenState &= ~uint(256);
        // End event: Offer canceled
        _tokenState |= 0;
        break;
        }
      }
      // <--- ExclusiveGateway sid-757D9B45_2990_4D72_BFA2_4DEC61AA8DA4 --->
      if (_tokenState & 2 == 2) {
        // This gateway has two outgoing: to Reject offer (sid-C49AC673-113F-41E0-A8FF-FA0D5D2267FA, bit 4) and to Book Travel_and_confirm booking (sid-C9EDEBCA-CFD7-47C8-B834-6275614314F0, bit 8)
        // We model as: if (conditions & 1 == 1) { go to Book Travel } else { go to Reject offer }
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-4334BA60_223E_4C5F_9305_20B14D486830 --->
      if (_tokenState & 64 == 64) {
        // Two outgoing: to Confirm payment (sid-D456077E-5BB6-474E-88EC-5C0B045B5F78, bit 128) and to Refuse payment (sid-85CDD208-375B-493C-808D-239AB05D7F30, bit 256)
        // We model as: if (conditions & 2 == 2) { go to Confirm payment } else { go to Refuse payment }
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        } else {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}