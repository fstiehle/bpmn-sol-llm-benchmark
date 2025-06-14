// test openai/gpt-4.1 - one-shot at 2025-06-11T23:56:17.156Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
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
    while(_tokenState != 0) {

      // Task 1: Bewerbung abschicken
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for task 1 here (Bewerbung abschicken)
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // Gateway oryx_7DDDABBB_2A98_4667_BB99_A3F3F5C8D9D4: diverging exclusive
      if (_tokenState & 2 == 2) {
        bool taken = false;
        // conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          taken = true;
        }
        // default: Unterlagen vollstaendig
        if (!taken) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }

      // Task 2: fehlende Unterlagen anfordern
      if (_tokenState & 16 == 16) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code for task 2 here (fehlende Unterlagen anfordern)
          _tokenState &= ~uint(16);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }

      // Gateway oryx_417481F9_A398_4067_BC4E_6B994FF3EF11: diverging exclusive
      if (_tokenState & 256 == 256) {
        bool taken = false;
        // Bewerber will Unterlagen nachsenden
        if (!taken) {
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          taken = true;
        }
        // conditions & 8 == 8
        if (conditions & 8 == 8) {
          _tokenState &= ~uint(256);
          _tokenState |= 2048;
          taken = true;
        }
        continue;
      }

      // Task 6: fehlende Unterlagen nachschicken
      if (_tokenState & 1024 == 1024) {
        if (id == 6 && msg.sender == participants[10]) {
          // custom code for task 6 here (fehlende Unterlagen nachschicken)
          _tokenState &= ~uint(1024);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }

      // Gateway oryx_8F38EF2C_B6DB_402D_8C9B_4B94B56A19B7: converging exclusive
      if (_tokenState & 2048 == 2048) {
        _tokenState &= ~uint(2048);
        _tokenState |= 32;
        continue;
      }

      // Gateway oryx_5C25C2F4_2009_4959_99FB_C24B1A927205: converging exclusive
      if (_tokenState & 8 == 8) {
        _tokenState &= ~uint(8);
        _tokenState |= 4;
        continue;
      }

      // Gateway oryx_60CE99B5_A212_47B8_8A4D_C87D3F0DD799: diverging exclusive
      if (_tokenState & 4 == 4) {
        bool taken = false;
        // conditions & 2 == 2
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          taken = true;
        }
        // default: Zusage
        if (!taken) {
          _tokenState &= ~uint(4);
          _tokenState |= 64;
        }
        continue;
      }

      // Task 4: Absage versenden
      if (_tokenState & 32 == 32) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code for task 4 here (Absage versenden)
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // end
        }
      }

      // Task 3: Zusage versenden
      if (_tokenState & 64 == 64) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code for task 3 here (Zusage versenden)
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      // Gateway oryx_C30C3A12_7A31_4C23_9FDC_6F5E501D1939: diverging exclusive
      if (_tokenState & 128 == 128) {
        bool taken = false;
        // conditions & 4 == 4
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          taken = true;
        }
        // default
        if (!taken) {
          _tokenState &= ~uint(128);
          _tokenState |= 4096;
        }
        continue;
      }

      // Task 5: Immatrikulationsunterlagen versenden
      if (_tokenState & 512 == 512) {
        if (id == 5 && msg.sender == participants[8]) {
          // custom code for task 5 here (Immatrikulationsunterlagen versenden)
          _tokenState &= ~uint(512);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }

      // Gateway oryx_A37F2E87_C324_404F_9D19_5E34AFC5C86A: converging exclusive
      if (_tokenState & 4096 == 4096) {
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // end
      }
      if (_tokenState & 8192 == 8192) {
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // end
      }

      break;
    }
    tokenState = _tokenState;
  }
}
