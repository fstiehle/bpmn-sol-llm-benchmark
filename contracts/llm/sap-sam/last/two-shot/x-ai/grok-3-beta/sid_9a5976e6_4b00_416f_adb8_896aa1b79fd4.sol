// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:46:44.777Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 2 == 2) {
        // <--- sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C Mitteilung ueber Rueckrufware senden --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5 Mitteilung ueber Rueckrufware senden --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8 Beurteilung der Rueckrufware senden --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-73AF27ED-C1B7-4550-960B-49B0B084123B Informationen ueber Rueckrufaktion senden --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-2414D848-3DBE-43B9-BE5F-7411E200C56C Rueckrufware liefern --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-64FA6A0A-8A78-431A-832D-33E60AF3C869 Auftrag zum Ruecktransport senden --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- sid-99D74F7C-9F2D-4C11-A8F2-0402AA255A2A Ruecknahmeart? --->
        if (conditions & 1 == 1) {
          // <--- auto transition --->
          _tokenState &= ~uint(1);
          _tokenState |= 140; // Activates sid-89C0972A-DCBD-4A02-974F-4F6497F7C91F parallel gateway diverging
          continue;
        } else {
          // <--- default path --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Default path to sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C
          continue;
        }
      }
      if (_tokenState & 140 == 140) {
        // <--- sid-89C0972A-DCBD-4A02-974F-4F6497F7C91F Parallel Diverging --->
        _tokenState &= ~uint(140);
        _tokenState |= 4 | 8 | 128; // Activate all outgoing tasks concurrently
        continue;
      }
      if (_tokenState & 352 == 352) {
        // <--- sid-BA0DCA8E-7741-428C-A564-536900613B64 Parallel Converging --->
        _tokenState &= ~uint(352);
        _tokenState |= 16; // Converge to sid-125B8229-750A-4737-8AF3-F6C1E4C357F1
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-125B8229-750A-4737-8AF3-F6C1E4C357F1 Exclusive Converging --->
        _tokenState &= ~uint(16);
        _tokenState |= 1024; // Default path to sid-64FA6A0A-8A78-431A-832D-33E60AF3C869
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}