// test openai/gpt-4.1 - two-shot at 2025-06-12T01:54:56.116Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9f1baa6b_3120_4b80_a997_c90b03aee22b {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-B42E1B08-155A-4A95-9B09-E46F90D9B584 Make travel offer --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for sid-B42E1B08-155A-4A95-9B09-E46F90D9B584 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-EFD4788E-A1A4-40E5-A500-0970010990DD Place order --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-EFD4788E-A1A4-40E5-A500-0970010990DD here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 Reject Order --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 Apply order --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-6676D52C-DF78-4BB4-885E-3E6236D6B9D3 Confirm booking --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-6676D52C-DF78-4BB4-885E-3E6236D6B9D3 here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- sid-6EE679BB-748F-4253-B501-87CCF2E0D7D0 Pay travel --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for sid-6EE679BB-748F-4253-B501-87CCF2E0D7D0 here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // <--- sid-8D8EFFEB-C49E-4DC9-B6B6-8AC520B8A50C Order ticket --->
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for sid-8D8EFFEB-C49E-4DC9-B6B6-8AC520B8A50C here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- sid-795C6F26-3630-45A8-BAB6-DE8820B8DBB0 Refuse payment --->
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for sid-795C6F26-3630-45A8-BAB6-DE8820B8DBB0 here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-49741E13-1B13-422C-8AD2-6B8241F6E32E Confirm payment --->
      if (_tokenState & 1024 == 1024) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for sid-49741E13-1B13-422C-8AD2-6B8241F6E32E here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-E7E1374C-CB39-4070-BF5F-E7518BFE6888 EventBasedGateway --->
      if (_tokenState & 4 == 4) {
        // This is an event-based gateway with two outgoing sequenceFlows:
        // sid-606D3E0E-B68E-4D1B-93EB-34CBBF91B4B1 --> sid-1FD8BD65-616D-4C0C-92A1-E591AA72FAD0 (task 3)
        // sid-07192878-6F47-4215-BE50-716F658FA62F --> sid-FBCC0E56-C042-4E45-917E-0E8620D644D3 (task 4)
        // The gateway enables both downstream tasks to be triggered, but only one will be taken by user (mutually exclusive):
        // So we activate both bits and let the choreographyTask handler clear them as they are used.
        // Since we already handle this by activating both (see above), no further logic needed here.
        // The handling is already covered by activating tasks 3 (bit 8) and 4 (bit 16) from this gateway.
        // But for explicitness, let's model the transition here.

        // Only perform this transition if at least one of these tasks is not currently active (avoid duplicate activation)
        if ((_tokenState & (8|16)) == 0) {
          _tokenState &= ~uint(4);
          _tokenState |= (8|16);
          continue;
        }
      }
      // <--- sid-798ECEE9-70E6-446D-B76B-F22BF7F51E68 ExclusiveGateway --->
      if (_tokenState & 256 == 256) {
        // sid-60BF1208-4C0A-4FDF-B43D-C0A023F31983 -> sid-795C6F26-3630-45A8-BAB6-DE8820B8DBB0 (task 8) [default]
        // sid-17572496-3030-4AF9-A87F-3E5065BF1B58 (cond: conditions & 1 == 1) -> sid-49741E13-1B13-422C-8AD2-6B8241F6E32E (task 9)
        // Evaluate conditions
        bool taken = false;
        if (conditions & 1 == 1) {
          // condition for sid-17572496-3030-4AF9-A87F-3E5065BF1B58
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          taken = true;
          continue;
        }
        if (!taken) {
          // default flow sid-60BF1208-4C0A-4FDF-B43D-C0A023F31983
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}