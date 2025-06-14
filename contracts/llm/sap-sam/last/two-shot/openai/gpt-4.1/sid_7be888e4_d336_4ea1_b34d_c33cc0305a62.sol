// test openai/gpt-4.1 - two-shot at 2025-06-12T01:33:17.188Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_7be888e4_d336_4ea1_b34d_c33cc0305a62 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-3E37DF0E-F7CB-458E-814D-3771BB34BE1C Make travel offer --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for sid-3E37DF0E-F7CB-458E-814D-3771BB34BE1C here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-1D096979-7C5F-402C-A905-2F7180C1F4E1 Reject Offer --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-1D096979-7C5F-402C-A905-2F7180C1F4E1 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end (Offer cancelled)
        }
      }
      // <--- sid-8CF08A36-D3B9-4BF9-B3A3-F97D7619EAAA Book travel --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-8CF08A36-D3B9-4BF9-B3A3-F97D7619EAAA here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      // <--- sid-0ADD7839-3AFD-4454-86A1-0C6585433A74 Confirm booking --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for sid-0ADD7839-3AFD-4454-86A1-0C6585433A74 here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // <--- sid-CEC16AD1-8776-4EE7-8EED-BA50BE39F792 Pay travel --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-CEC16AD1-8776-4EE7-8EED-BA50BE39F792 here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-29C4DA6B-FE7C-4F58-9E5C-4DE887F9F1FD Order ticket --->
      if (_tokenState & 64 == 64) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for sid-29C4DA6B-FE7C-4F58-9E5C-4DE887F9F1FD here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      // <--- sid-BA77ABD3-D153-40B1-89FC-6ED58B05ADDA Confirm payment --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for sid-BA77ABD3-D153-40B1-89FC-6ED58B05ADDA here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end (Offer cancelled)
        }
      }
      // <--- sid-8DF13EBF-DD0D-4B5A-A60C-17AEFCC29464 Refuse payment --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for sid-8DF13EBF-DD0D-4B5A-A60C-17AEFCC29464 here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end (Offer cancelled)
        }
      }
      // <--- Gateway after Make travel offer (sid-0A2F37FA-DDCD-42EC-8662-ACDC076BC9E8) --->
      if (_tokenState & 2 == 2) {
        // event-based gateway: split to either Reject Offer or Book travel
        // If both possible, allow both in parallel (since event-based, only one will be taken by user, but in token terms allow both)
        // We activate both sid-1D096979-7C5F-402C-A905-2F7180C1F4E1 (4) and sid-8CF08A36-D3B9-4BF9-B3A3-F97D7619EAAA (8)
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // <--- Gateway after Order ticket (sid-321CCB97-25B8-454A-91EA-5077A81FEDF2) --->
      if (_tokenState & 256 == 256) {
        // sid-321CCB97-25B8-454A-91EA-5077A81FEDF2: exclusive gateway with default sid-8E79949A-EC12-492D-ACDB-BC3514D5F0FD
        // conditional outgoing sid-118D607C-178A-4C58-B1D4-436D1F7F7CD3: "conditions & 1 == 1" -> sid-8DF13EBF-DD0D-4B5A-A60C-17AEFCC29464 (bit 512)
        // default: sid-8E79949A-EC12-492D-ACDB-BC3514D5F0FD -> sid-BA77ABD3-D153-40B1-89FC-6ED58B05ADDA (bit 128)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 128;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}