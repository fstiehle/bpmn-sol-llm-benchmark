// test openai/gpt-4.1 - two-shot at 2025-06-12T01:07:39.056Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_5aefb762_fb87_4c5e_96a2_1e48284acd78 {
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
      // sid-D26FF6A4-755A-42D6-83AC-6E1BCD2E3DCC zahtev za transportom
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // sid-1478F954-F4CD-4D75-AB29-32006E1737BA slanje odgovora korisniku
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // sid-254C8972-E435-4E2C-8E5C-BBAFAFFB3F25 uplata novca
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // sid-07E79413-87B7-4016-AEFD-DD21A4A53F6C predaja paketa
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      // sid-B5927152-BA31-42DA-9FF2-944F652939F6 obavestavanje korisnika
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      // sid-0B99A3A5-DEB6-419E-9665-352934032AF6 obavestavanje nadleznih organa
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      // sid-2A28886A-6E1C-4CF3-9713-8DA868C5BB8F predaja paketa carini
      if (_tokenState & 32 == 32) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      // sid-9E932A3A-97DC-49AF-A04E-0EE0C0B73A94 vracanje paketa korisniku
      if (_tokenState & 1024 == 1024) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-8E7FDDB4-F7AE-431F-8AC6-3B7E5B02CAF7 slanje potvrde o isporuci paketa
      if (_tokenState & 2048 == 2048) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Gateway: sid-04E45947-BC8B-4741-A1AB-93220DE04C9A pronadjen nelegalan sadrzaj?
      if (_tokenState & 16 == 16) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // sid-04E45947-BC8B-4741-A1AB-93220DE04C9A -> sid-2A28886A-6E1C-4CF3-9713-8DA868C5BB8F
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-04E45947-BC8B-4741-A1AB-93220DE04C9A -> sid-89CEA534-3D12-417C-A21B-08F6DA772F75
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      // Parallel Split: sid-89CEA534-3D12-417C-A21B-08F6DA772F75
      if (_tokenState & 64 == 64) {
        // sid-89CEA534-3D12-417C-A21B-08F6DA772F75 -> sid-B5927152-BA31-42DA-9FF2-944F652939F6, sid-0B99A3A5-DEB6-419E-9665-352934032AF6
        _tokenState &= ~uint(64);
        _tokenState |= 192;
        continue;
      }
      // Parallel Join: sid-A914AC11-69EB-49B0-A029-C15DA1CCF7FB
      if (_tokenState & 3072 == 3072) {
        // sid-A914AC11-69EB-49B0-A029-C15DA1CCF7FB -> end
        _tokenState &= ~uint(3072);
        _tokenState |= 0;
        break; // is end
      }
      // sid-07B97F10-B778-493C-AB77-E545F1EBA2D7 dokumentacija ispravna?
      if (_tokenState & 256 == 256) {
        bool didTransition = false;
        if (conditions & 2 == 2) {
          // sid-07B97F10-B778-493C-AB77-E545F1EBA2D7 -> sid-8E7FDDB4-F7AE-431F-8AC6-3B7E5B02CAF7
          _tokenState &= ~uint(256);
          _tokenState |= 2048;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-07B97F10-B778-493C-AB77-E545F1EBA2D7 -> sid-9E932A3A-97DC-49AF-A04E-0EE0C0B73A94
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}