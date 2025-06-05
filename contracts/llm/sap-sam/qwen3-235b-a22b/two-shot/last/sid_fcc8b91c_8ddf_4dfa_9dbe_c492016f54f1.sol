// test large Model - Two Shot at 2025-06-05T15:26:26.611Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_two_shot_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if ((_tokenState & 1) == 1) {
        // <--- sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestätigung senden --->
        if (id == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if ((_tokenState & 2) == 2) {
        // Handle outgoing flows from sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157
        if ((conditions & 1) == 1) {
          // <--- sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern --->
          if (id == 1 && msg.sender == participants[2]) {
            _tokenState &= ~uint(2);
            _tokenState |= 4;
            continue;
          }
        } else {
          // Default flow (no condition)
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }

      if ((_tokenState & 4) == 4) {
        // <--- sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken --->
        if (id == 2 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }

      if ((_tokenState & 8) == 8) {
        // Handle outgoing flows from sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D
        if ((conditions & 2) == 2) {
          // <--- sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden --->
          if (id == 3 && msg.sender == participants[6]) {
            _tokenState &= ~uint(8);
            _tokenState |= 0;
            break; // end
          }
        } else {
          // Default branch
          // <--- sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden --->
          if (id == 4 && msg.sender == participants[8]) {
            _tokenState &= ~uint(8);
            _tokenState |= 0;
            break; // end
          }
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}