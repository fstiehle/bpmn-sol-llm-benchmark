// test openai/gpt-4.1 - one-shot at 2025-06-12T00:02:25.792Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a0a6bc07_66a5_4c5b_8cb4_e810e986932c {
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
      // sid-C0A1EAF6-72BE-4733-817D-D9CDD3F1D5E4: Problem schildern (Hotline_Mitarbeiter -> Kunde)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for Problem_schildern here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-69BA1A06-C37D-48D0-B43D-B9D0CAE2A281: Problem besprechen (Kunde -> Hotline_Mitarbeiter)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for Problem_besprechen here
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-AA53F174-17CB-407B-9699-9F34C7BCB4A1 (exclusive Problem_geloest) ---
      // IN: 4
      if (_tokenState & 4 == 4) {
        // sid-1AF981DD-6706-42DB-B923-A35641555463 (condition: conditions & 1 == 1) --> Notiz senden (task 4)
        bool didTransition = false;
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
        }
        // default sid-D80CBD41-0D6F-4C4D-A082-50477DB902A6 --> Problem geloest (task 3)
        if (!didTransition) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      // sid-B4C50627-5A0A-4352-B049-F76B5A945616: Problem geloest (Hotline_Mitarbeiter -> Kunde)
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[5]) {
          // custom code for Problem_geloest here
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      // sid-154D7D60-2E88-4DCB-AE1F-A1BFEB9F2EA5: Notiz senden (Hotline_Mitarbeiter -> Disponent)
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[7]) {
          // custom code for Notiz_senden here
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-B06C37A2-496C-4024-BCD7-8C2C776A06BD: Problem schildern (Servicetechniker -> Disponent)
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[9]) {
          // custom code for Problem_schildern_2 here
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-ACA61CA4-C1CA-4A07-BD58-3D4EEFECF95F: Problem vor Ort loesen (Kunde -> Servicetechniker)
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[11]) {
          // custom code for Problem_vor_Ort_loesen here
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // sid-3EB52EB9-A019-42DF-8709-F1C10B3EB532: Auftragsbericht unterschreiben lassen (Kunde -> Servicetechniker)
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[13]) {
          // custom code for Auftragsbericht_unterschreiben_lassen here
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}