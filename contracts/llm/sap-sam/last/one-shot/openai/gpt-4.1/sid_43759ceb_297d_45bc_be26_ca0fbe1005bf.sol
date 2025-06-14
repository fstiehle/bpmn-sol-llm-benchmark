// test openai/gpt-4.1 - one-shot at 2025-06-11T23:37:49.211Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_43759ceb_297d_45bc_be26_ca0fbe1005bf {
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
      // <--- sid-F7F3C968-49FE-4E45-9D23-88A8D6512528 Korisnik ima problem --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task 1 here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // <--- sid-CFB94369-6DC6-4A48-8CB3-0224494D2054 Zahtevanje detaljnijeg opisa problema --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // custom code for task 2 here
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // <--- Exclusive Gateway sid-4AE43A7F_49CD_4654_852D_C8B13BA9A88C --->
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // condition: conditions & 1 == 1 to sid-1B0A61E0_9252_4495_A515_DD76CE5F5DDC (bit 256)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 256;
          transitioned = true;
        }
        // condition: conditions & 2 == 2 to sid-13D1392F_10DB_4B84_AA04_4CBC0D323E0B (bit 128)
        else if (conditions & 2 == 2) {
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          transitioned = true;
        }
        // default: sid-43D5C23B_4BAF_4D90_A088_FECE19108670 (bit 8)
        if (!transitioned) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }

      // <--- sid-43D5C23B-4BAF-4D90-A088-FECE19108670 Konsultovanje podrske I nivoa --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task 4 here
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }

      // <--- Exclusive Gateway sid-07C0ABF7_3050_49A6_BA56_A74824E57917 --->
      if (_tokenState & 16 == 16) {
        // condition: conditions & 2 == 2 to sid-13D1392F_10DB_4B84_AA04_4CBC0D323E0B (bit 128)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(16);
          _tokenState |= 128;
        }
        // default: sid-968CBB3E_23E7_4AC0_87A5_75DA650EE511 (bit 64)
        else {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
        }
        continue;
      }

      // <--- sid-968CBB3E-23E7-4AC0-87A5-75DA650EE511 Konsultovanje podrske II nivoa --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // custom code for task 6 here
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }

      // <--- sid-8AC8B7C6-BE9D-4CD0-B309-0D83C70F7C21 Saopstavanje resenja problema podrsci I nivoa --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[13]) {
          // custom code for task 7 here
          _tokenState &= ~uint(512);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      // <--- Exclusive Gateway sid-13D1392F_10DB_4B84_AA04_4CBC0D323E0B --->
      if (_tokenState & 128 == 128) {
        // Always to sid-DECE56B3_AD26_4313_9744_49DF2A6C6A9F (bit 32)
        _tokenState &= ~uint(128);
        _tokenState |= 32;
        continue;
      }

      // <--- sid-DECE56B3-AD26-4313-9744-49DF2A6C6A9F Saopstavanje resenja problema operateru --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[9]) {
          // custom code for task 5 here
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }

      // <--- Exclusive Gateway sid-1B0A61E0_9252_4495_A515_DD76CE5F5DDC --->
      if (_tokenState & 256 == 256) {
        // Always to sid-31D3A0CF_717F_4EF7_9B47_774CB8A8215D (bit 1024)
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        continue;
      }

      // <--- sid-31D3A0CF-717F-4EF7-9B47-774CB8A8215D Saopstavanje resenja problema korisniku --->
      if (_tokenState & 1024 == 1024) {
        if (3 == id && msg.sender == participants[5]) {
          // custom code for task 3 here
          _tokenState &= ~uint(1024);
          // End event
          _tokenState = 0;
          break;
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}