// test openai/gpt-4.1 - one-shot at 2025-06-11T23:25:33.505Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_106dc1f8_9c56_4ddc_85fd_0ff7dbd0977b {
  uint public tokenState = 1;
  address[19] public participants;
  uint public conditions;
  constructor(address[19] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-23A82866-0FE2-412A-9B17-9FE6E46FCEA3 : Donationbutton anklicken
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // sid-1E986972-CECF-4DC9-8AC7-3BC8307E90C4 : leiten auf neue webseite weiter
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // sid-E48D12F9-BFD7-4A0C-8FB6-FD0EE5A205BC : Daten ausfuellen
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[5]) {
          // custom code
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }

      // gateway sid-993950CD-0E09-4FF2-A5E0-2CAFCA90E2F6 (exclusive)
      if (_tokenState & 8 == 8) {
        bool didTransition = false;
        if (!didTransition && (conditions & 1 == 1)) {
          // sid-B2278B24-5414-432F-BD47-A25281EBE78D to sid-F6B8C1EE-C239-4E8C-9AF3-246ED438A4BC
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default sid-EEEBBF87-E5C0-4BCF-B24B-FF4B6ED84A06 to sid-40900C5F-68C8-458E-9723-9751E9F15431
          _tokenState &= ~uint(8);
          _tokenState |= 256;
          continue;
        }
      }

      // sid-F6B8C1EE-C239-4E8C-9AF3-246ED438A4BC : Spende uebermitteln
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[7]) {
          // custom code
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      // sid-53FE6C01-E4D5-4716-A00E-F84996F2BC00 : Spende erhalten
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[9]) {
          // custom code
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }

      // sid-795BDE4F-A952-455E-887A-EA41B29BCBF2 : Spende im Stream anzeigen
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[11]) {
          // custom code
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      // gateway sid-DADEC2F1-3EEB-45C1-8C17-DC43DBCCA0F9 (exclusive)
      if (_tokenState & 128 == 128) {
        bool didTransition = false;
        if (!didTransition && (conditions & 2 == 2)) {
          // sid-BEA667EB-DD3B-4DF6-9205-B676C58C6077 to sid-D7A36BA5-1446-4C4A-AD55-69BDBAE7A8CA
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default sid-18E57FF5-F3A1-4626-8327-458695529ACA to sid-BCB18608-A5AB-4284-A4C9-1A81DA0CB9E5
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }

      // sid-40900C5F-68C8-458E-9723-9751E9F15431 : Zahlung abgelehnt
      if (_tokenState & 256 == 256) {
        if (9 == id && msg.sender == participants[17]) {
          // custom code
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break;
        }
      }

      // sid-BCB18608-A5AB-4284-A4C9-1A81DA0CB9E5 : Donation vorlesen
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[13]) {
          // custom code
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break;
        }
      }

      // sid-D7A36BA5-1446-4C4A-AD55-69BDBAE7A8CA : Donation wird nicht vorgelesen
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[15]) {
          // custom code
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break;
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}