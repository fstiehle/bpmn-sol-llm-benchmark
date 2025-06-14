// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:32:09.391Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_4e5446e8_0104_4716_a1a3_e21f008011b7 {
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
    while (_tokenState != 0) {
      if (_tokenState & 2 == 2) {
        // <--- oryx_2D87C0AD-1C70-4B00-90C1-B406D0CB1CAF Bewerbung abschicken --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- oryx_6C8BD963-B2F4-47DB-ADA8-2ADC0ED9B691 Fehlende Unterlagen anfordern --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- oryx_8F147659-7E2E-4F5D-8F4D-EB397F99AD09 Absage zuschicken --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- oryx_2CD79A54-4137-492B-87F1-FACBA5D0E864 Zusage zuschicken --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- oryx_A200BA42-EF51-43C1-B019-D226E1AAC1A9 Unterlagen vollstaendig? --->
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
      if (_tokenState & 16 == 16) {
        // <--- oryx_123445D2-24AD-4BB5-9118-0165450B2B3C Converging Gateway --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- oryx_1408DA1A-25EC-418C-9B03-0D7F8037E491 Zusage? --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- oryx_E0381DB8-7BB7-4E7A-82D8-A815F98A2003 Converging Gateway --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 512 == 512) {
        // <--- oryx_E0381DB8-7BB7-4E7A-82D8-A815F98A2003 Converging Gateway --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}