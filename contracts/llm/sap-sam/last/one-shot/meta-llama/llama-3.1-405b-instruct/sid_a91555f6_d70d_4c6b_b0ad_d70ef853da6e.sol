// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:48:27.143Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
  uint public tokenState = 1;
  address[35] public participants;
  uint public conditions;
  constructor(address[35] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1 Auftrag einleiten --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_2 Auftragsbestätigung senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_3 Auftragsstornierung senden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_4 Forschungen einleiten --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          continue; 
        }
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_5 Herstellungsprozess einleiten --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_6 Auftrag und Kapazitäten überprüfen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_7 Rechtliche Aspekte überprüfen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue; 
        }
        if (true) {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 2048;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_8 Qualitätskontrolle durchführen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_9 Ursachen analysieren --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_10 Probe ausliefern --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_11 Qualitätskontrolle durchführen --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask_12 Anzahl überprüfen --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        if (conditions & 8 == 8) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16384);
          _tokenState |= 65536;
          continue; 
        }
        if (conditions & 32 == 32) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16384);
          _tokenState |= 131072;
          continue; 
        }
      }
      if (_tokenState & 32768 == 32768) {
        if (conditions & 16 == 16) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32768);
          _tokenState |= 262144;
          continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- ChoreographyTask_13 Reklamation senden --->
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(65536);
        _tokenState |= 131072;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <--- ChoreographyTask_14 Auftragsstornierung senden --->
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(131072);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 262144 == 262144) {
        // <--- ChoreographyTask_15 Qualitätsbestätigung senden --->
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 524288;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 524288 == 524288) {
        // <--- ChoreographyTask_16 Biopharmazeutika ausliefern --->
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(524288);
        _tokenState |= 1048576;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1048576 == 1048576) {
        // <--- ChoreographyTask_17 Eingang bestätigen --->
        if (17 == id && msg.sender == participants[32]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1048576);
        _tokenState |= 2097152;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2097152 == 2097152) {
        // <--- ChoreographyTask_18 Rechnung erstellen --->
        if (18 == id && msg.sender == participants[34]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2097152);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
