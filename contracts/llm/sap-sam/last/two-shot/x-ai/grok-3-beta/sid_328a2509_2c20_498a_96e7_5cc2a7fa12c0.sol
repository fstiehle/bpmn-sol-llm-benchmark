// test x-ai/grok-3-beta - two-shot at 2025-06-14T00:27:28.220Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_328a2509_2c20_498a_96e7_5cc2a7fa12c0 {
  uint public tokenState = 1; // Start with the start event active
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
      if (_tokenState & 1 == 1) {
        // <--- sid-AA462EEC-E354-4613-8331-6A7316716EDF Event-Based Gateway Diverging --->
        // Activate both outgoing paths for event-based gateway (exclusive choice)
        _tokenState &= ~uint(1);
        _tokenState |= 2; // Path to sid-4DB685DD-6383-42A3-8D06-0AB4D69F921C
        _tokenState |= 4; // Path to sid-9A69B876-7737-4E82-9EAF-4023E127749C
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-4DB685DD-6383-42A3-8D06-0AB4D69F921C Skasowanie wizyty --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8; // Move to sid-5ECAAC87-4877-474A-A106-1ABD47BAA1EA (Exclusive Gateway)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-9A69B876-7737-4E82-9EAF-4023E127749C Skasowanie wizyty --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8; // Move to sid-5ECAAC87-4877-474A-A106-1ABD47BAA1EA (Exclusive Gateway)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-5ECAAC87-4877-474A-A106-1ABD47BAA1EA Exclusive Gateway Converging --->
        // Since it's a converging gateway, we can move forward once any incoming path is active
        _tokenState &= ~uint(8);
        _tokenState |= 16; // Move to sid-26AD080D-D2BA-4FFF-A84A-5ED32418E470 (Parallel Gateway)
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-26AD080D-D2BA-4FFF-A84A-5ED32418E470 Parallel Gateway Diverging --->
        // Activate both outgoing paths concurrently
        _tokenState &= ~uint(16);
        _tokenState |= 32; // Path to sid-CD8932F0-FA63-4338-B81E-2E2B4D6E149F
        _tokenState |= 64; // Path to sid-E40BD334-AFF4-43A2-9144-B49F16663E03
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-CD8932F0-FA63-4338-B81E-2E2B4D6E149F Dokonanie skasowania wizyty --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128; // Move to end event placeholder
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-E40BD334-AFF4-43A2-9144-B49F16663E03 Dokonanie skasowania wizyty --->
        if (4 == id && msg.sender == participants[7]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128; // Move to end event placeholder
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-8FFD75E0-7F1D-4AB7-90B8-163F66D0AF51 End Event --->
        // Check if both parallel paths are complete (no active tokens in parallel paths)
        if (_tokenState & (32 | 64) == 0) {
          _tokenState = 0; // Process complete, terminate
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}