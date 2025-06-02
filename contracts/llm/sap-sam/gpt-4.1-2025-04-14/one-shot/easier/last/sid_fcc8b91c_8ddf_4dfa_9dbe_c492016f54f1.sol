// test GPT 4.1 - One Shot with easier example at 2025-06-02T19:32:09.565Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_easier_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
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
      // Task 0: sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 "Bewerbung und Eingangsbestätigung senden"
      if (_tokenState & 1 == 1) {
        if (id == 0 && msg.sender == participants[0]) {
          // Task logic here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      // After sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6, exclusiveGateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157
      // sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 default="sid-4069629D-D16A-45C2-9564-95868D56762E"
      // Outgoing:
      //   sid-BF908D03-AB64-4DE5-931B-5CB7F5AF78C7 ("nein", condition: conditions & 1 == 1) --> task 1 (sid-63049054-FF0D-448E-A42E-7B917601D74C)
      //   sid-4069629D-D16A-45C2-9564-95868D56762E (default) --> join gateway sid-A1DCC015-7407-4D15-80AB-4AC299655E72
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // To "Fehlende Unterlagen anfordern"
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // Default: to sid-A1DCC015-7407-4D15-80AB-4AC299655E72
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue;
        }
      }

      // Task 1: sid-63049054-FF0D-448E-A42E-7B917601D74C "Fehlende Unterlagen anfordern"
      if (_tokenState & 4 == 4) {
        if (id == 1 && msg.sender == participants[2]) {
          // Task logic here
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }

      // Task 2: sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F "Fehlende Unterlagen schicken"
      if (_tokenState & 8 == 8) {
        if (id == 2 && msg.sender == participants[4]) {
          // Task logic here
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }

      // After "Fehlende Unterlagen schicken", join gateway sid-A1DCC015-7407-4D15-80AB-4AC299655E72 (OR-join: from default, or from "Fehlende Unterlagen schicken")
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }

      // After join, exclusiveGateway sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D
      // sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D default="sid-882B8A1A-5E7A-4DF9-BFE5-D0F41C10960F"
      // Outgoing:
      //   sid-2F3AC027-22F1-4D6A-8A9B-8146D23D732B ("ja", condition: conditions & 1 == 1) --> task 3 (sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF)
      //   sid-882B8A1A-5E7A-4DF9-BFE5-D0F41C10960F (default) --> task 4 (sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9)
      if (_tokenState & 32 == 32) {
        if (conditions & 1 == 1) {
          // To "Zusage senden"
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          // Default: "Absage senden"
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      // Task 3: sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF "Zusage senden"
      if (_tokenState & 64 == 64) {
        if (id == 3 && msg.sender == participants[6]) {
          // Task logic here
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }

      // Task 4: sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 "Absage senden"
      if (_tokenState & 128 == 128) {
        if (id == 4 && msg.sender == participants[8]) {
          // Task logic here
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }

      // Final join gateway sid-684ECB46-310F-4D15-9C70-6CE7F49A771F (from either Zusage or Absage)
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // end
      }

      break;
    }

    tokenState = _tokenState;
  }
}