// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T20:12:45.995Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
  uint public tokenState = 1;
  address[36] public participants;
  uint public conditions;
  uint public i;

  constructor(address[36] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-C239469D-57BD-4C4D-B124-5EF5ACD3DE1C Auftrag einleiten --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-48A887EF-89AB-404B-93A3-AA3401E32F92 Auftrag und Kapazitäten überprüfen --->
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(8);
          _tokenState |= 128;
          continue;
        }
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-C04696F9-6DC0-4F24-BCE8-9CC8DBB4C003 Auftragsbestätigung senden --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-24D1978A-2852-4BBB-946C-68E17547519C Forschungen einleiten --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-B7D3EC60-EAEE-4594-A016-5B46D4359125 Herstellungsprozess einleiten --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-98A8C0FD-93D5-4AE6-A018-DDAFDEB9479A Qualitätskontrolle durchführen --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        if (conditions & 8 == 8) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-BC5EFE3A-707F-47D6-8227-DE4753477F70 Probe ausliefern --->
        if (10 == id && msg.sender == participants[18]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-02ACAA68-B584-43E2-B00F-E051ABD75073 Qualitätskontrolle durchführen --->
        if (11 == id && msg.sender == participants[20]) {
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        if (conditions & 16 == 16) {
          _tokenState &= ~uint(4096);
          _tokenState |= 32768;
          continue;
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- sid-4F2F3D5F-4677-417E-B2CB-99D5469A3092 Qualitätsbestätigung senden --->
        if (15 == id && msg.sender == participants[28]) {
          _tokenState &= ~uint(32768);
          _tokenState |= 65536;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- sid-CEC360BB-AC3B-49EF-8400-590588EB1323 Biopharmazeutika ausliefern --->
        if (16 == id && msg.sender == participants[30]) {
          _tokenState &= ~uint(65536);
          _tokenState |= 131072;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <--- sid-41418591-E182-4CB8-A250-13AE413DB96F Eingang bestätigen --->
        if (17 == id && msg.sender == participants[32]) {
          _tokenState &= ~uint(131072);
          _tokenState |= 262144;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 262144 == 262144) {
        // <--- sid-70F253A9-42F4-4B2F-97D8-08A905A14818 Rechnung erstellen --->
        if (18 == id && msg.sender == participants[34]) {
          _tokenState &= ~uint(262144);
          _tokenState |= 0;
          break;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-DFFAB4E3-594A-472C-92DE-14806C638BAF Rechtliche Aspekte überprüfen --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8192 == 8192) {
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8192);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- sid-5334FE47-DD51-49CA-8176-4B9DF7415F4E Ursachen analysieren --->
        if (9 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(16384);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        if (conditions & 16 == 16) {
          _tokenState &= ~uint(4096);
          _tokenState |= 32768;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-7B533088-1A10-47EB-AB27-710D74341063 Anzahl überprüfen --->
        if (12 == id && msg.sender == participants[22]) {
          i = i + 1;
          _tokenState &= ~uint(4096);
          _tokenState |= 16384;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16384 == 16384) {
        if (conditions & 32 == 32) {
          _tokenState &= ~uint(16384);
          _tokenState |= 8192;
          continue;
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-BB48F939-F07D-4C27-B96B-02424B7776D3 Reklamation senden --->
        if (13 == id && msg.sender == participants[24]) {
          _tokenState &= ~uint(8192);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- sid-CA197233-FA4B-497C-B86F-5C1B36EA22DF Auftragsstornierung senden --->
        if (14 == id && msg.sender == participants[26]) {
          _tokenState &= ~uint(32768);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}