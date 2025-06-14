// test openai/gpt-4.1 - two-shot at 2025-06-12T00:59:20.530Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_43759ceb_297d_45bc_be26_ca0fbe1005bf {
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
      // --- sid-F7F3C968-49FE-4E45-9D23-88A8D6512528 Korisnik ima problem ---
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // --- sid-CFB94369-6DC6-4A48-8CB3-0224494D2054 Zahtevanje detaljnijeg opisa problema ---
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // --- sid-43D5C23B-4BAF-4D90-A088-FECE19108670 Konsultovanje podrske I nivoa ---
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // --- sid-DECE56B3-AD26-4313-9744-49DF2A6C6A9F Saopstavanje resenja problema operateru ---
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[9]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // --- sid-968CBB3E-23E7-4AC0-87A5-75DA650EE511 Konsultovanje podrske II nivoa ---
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // --- sid-8AC8B7C6-BE9D-4CD0-B309-0D83C70F7C21 Saopstavanje resenja problema podrsci I nivoa ---
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[13]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // --- sid-31D3A0CF-717F-4EF7-9B47-774CB8A8215D Saopstavanje resenja problema korisniku ---
      if (_tokenState & 4096 == 4096) {
        if (3 == id && msg.sender == participants[5]) {
          // --- custom code for task here ---
          _tokenState &= ~uint(4096);
          _tokenState |= 0;
          break; // is end
        }
      }

      // --- EXCLUSIVE GATEWAY sid-4AE43A7F-49CD-4654-852D-C8B13BA9A88C ---
      if (_tokenState & 4 == 4) {
        bool fired = false;
        // condition: conditions & 1 == 1 --> to sid-1B0A61E0-9252-4495-A515-DD76CE5F5DDC
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 4096;
          fired = true;
          continue;
        }
        // default: sid-98286309-C476-4319-9246-2355C3041095 --> sid-43D5C23B-4BAF-4D90-A088-FECE19108670
        if (!fired) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }

      // --- sid-07C0ABF7-3050-49A6-BA56-A74824E57917 Podrska I nivoa zna da resi problem? ---
      if (_tokenState & 32 == 32) {
        bool fired = false;
        // condition: conditions & 2 == 2 --> sid-13D1392F-10DB-4B84-AA04-4CBC0D323E0B
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          fired = true;
          continue;
        }
        // default: sid-E702102A-0345-4B8F-9E2A-13650A70F1AD --> sid-968CBB3E-23E7-4AC0-87A5-75DA650EE511
        if (!fired) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }

      // --- sid-13D1392F-10DB-4B84-AA04-4CBC0D323E0B (converging gateway) ---
      // Wait for both sid-20829CD8-6E28-47DC-B9DE-1F1F5B56627A and sid-CB053121-6D7A-4546-9B22-01998291BA3F
      // sid-20829CD8-6E28-47DC-B9DE-1F1F5B56627A: from sid-07C0ABF7-3050-49A6-BA56-A74824E57917 if conditions & 2 == 2
      // sid-CB053121-6D7A-4546-9B22-01998291BA3F: from sid-8AC8B7C6-BE9D-4CD0-B309-0D83C70F7C21
      if (_tokenState & 2048 == 2048) {
        // sid-CB053121-6D7A-4546-9B22-01998291BA3F fired
        _tokenState &= ~uint(2048);
        _tokenState |= 128;
        continue;
      }

      // --- sid-1B0A61E0-9252-4495-A515-DD76CE5F5DDC (converging gateway) ---
      // Wait for sid-01617CD8-EA25-4228-930A-492974460450 or sid-8264C890-4886-464C-A097-5EFC82E234F7
      // sid-01617CD8-EA25-4228-930A-492974460450: from sid-4AE43A7F-49CD-4654-852D-C8B13BA9A88C if conditions & 1 == 1
      // sid-8264C890-4886-464C-A097-5EFC82E234F7: from sid-DECE56B3-AD26-4313-9744-49DF2A6C6A9F
      if (_tokenState & 256 == 256) {
        // sid-8264C890-4886-464C-A097-5EFC82E234F7 fired
        _tokenState &= ~uint(256);
        _tokenState |= 4096;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
