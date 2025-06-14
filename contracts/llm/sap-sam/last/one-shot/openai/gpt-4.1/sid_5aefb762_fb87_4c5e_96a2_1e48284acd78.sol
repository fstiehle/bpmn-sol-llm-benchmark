// test openai/gpt-4.1 - one-shot at 2025-06-11T23:43:40.784Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_5aefb762_fb87_4c5e_96a2_1e48284acd78 {
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
      // ChoreographyTask 1: sid-D26FF6A4-755A-42D6-83AC-6E1BCD2E3DCC zahtev_za_transportom, initiatingParticipant: 0
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom task code
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask 2: sid-1478F954-F4CD-4D75-AB29-32006E1737BA slanje_odgovora_korisniku, initiatingParticipant: 3
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // custom task code
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask 3: sid-254C8972-E435-4E2C-8E5C-BBAFAFFB3F25 uplata_novca, initiatingParticipant: 4
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // custom task code
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask 4: sid-07E79413-87B7-4016-AEFD-DD21A4A53F6C predaja_paketa, initiatingParticipant: 6
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // custom task code
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // split at sid-04E45947-BC8B-4741-A1AB-93220DE04C9A (pronadjen_nelegalan_sadrzaj)
      if (_tokenState & 16 == 16) {
        bool done = false;
        // conditional: sid-40373D90-94CA-4062-AB1B-3C1FFE7F165C (to sid-2A28886A-6E1C-4CF3-9713-8DA868C5BB8F)
        if (!done && (conditions & 1 == 1)) {
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          done = true;
        }
        // default: sid-E950F45D-2440-4B47-885A-A6A53F7B2F9A (to sid-89CEA534-3D12-417C-A21B-08F6DA772F75)
        if (!done) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          done = true;
        }
        continue;
      }
      // parallel split at sid-89CEA534-3D12-417C-A21B-08F6DA772F75
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 256 | 1024;
        continue;
      }
      // ChoreographyTask 5: sid-B5927152-BA31-42DA-9FF2-944F652939F6 obavestavanje_korisnika, initiatingParticipant: 8
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[8]) {
          // custom task code
          _tokenState &= ~uint(256);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask 6: sid-0B99A3A5-DEB6-419E-9665-352934032AF6 obavestavanje_nadleznih_organa, initiatingParticipant: 10
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
          // custom task code
          _tokenState &= ~uint(1024);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      // parallel join at sid-A914AC11-69EB-49B0-A029-C15DA1CCF7FB (wait for both sid-B5927152 and sid-0B99A3A5)
      if (_tokenState & 12288 == 12288) {
        _tokenState &= ~uint(12288);
        _tokenState |= 16384;
        continue;
      }
      // ChoreographyTask 7: sid-2A28886A-6E1C-4CF3-9713-8DA868C5BB8F predaja_paketa_carini, initiatingParticipant: 12
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
          // custom task code
          _tokenState &= ~uint(128);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // exclusive gateway sid-07B97F10-B778-493C-AB77-E545F1EBA2D7 dokumentacija_ispravna
      if (_tokenState & 2048 == 2048) {
        bool done = false;
        // conditional: sid-68FBC67A-1A3F-48BA-8C1F-A43E721E5E36 (to sid-8E7FDDB4-F7AE-431F-8AC6-3B7E5B02CAF7)
        if (!done && (conditions & 2 == 2)) {
          _tokenState &= ~uint(2048);
          _tokenState |= 512;
          done = true;
        }
        // default: sid-CC6056CF-76FE-4B24-B9BE-6D44BEB2F81B (to sid-9E932A3A-97DC-49AF-A04E-0EE0C0B73A94)
        if (!done) {
          _tokenState &= ~uint(2048);
          _tokenState |= 2560;
          done = true;
        }
        continue;
      }
      // ChoreographyTask 8: sid-9E932A3A-97DC-49AF-A04E-0EE0C0B73A94 vracanje_paketa_korisniku, initiatingParticipant: 14
      if (_tokenState & 2560 == 2560) {
        if (8 == id && msg.sender == participants[14]) {
          // custom task code
          _tokenState &= ~uint(2560);
          // sid-C1719941-9017-49E4-B285-9BFEA34BF218 to end
          _tokenState |= 0;
          break;
        }
      }
      // ChoreographyTask 9: sid-8E7FDDB4-F7AE-431F-8AC6-3B7E5B02CAF7 slanje_potvrde_o_isporuci_paketa, initiatingParticipant: 16
      if (_tokenState & 512 == 512) {
        if (9 == id && msg.sender == participants[16]) {
          // custom task code
          _tokenState &= ~uint(512);
          // sid-F061AA86-B906-4474-9FF2-7ED7D9BC5F1C to end
          _tokenState |= 0;
          break;
        }
      }
      // end of process (sid-22A30B8A-91F3-441B-B0B6-A96C94D60CDF)
      if (_tokenState & 16384 == 16384) {
        // sid-8541B950-FD6B-4DE6-8083-BC9FAC42A03E to end
        _tokenState &= ~uint(16384);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
