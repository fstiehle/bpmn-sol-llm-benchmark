// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T12:07:45.757Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
  uint public tokenState = 1;
  address[36] public participants;
  uint public conditions;

  constructor(address[36] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-C239469D-57BD-4C4D-B124-5EF5ACD3DE1C Auftrag einleiten --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-C04696F9-6DC0-4F24-BCE8-9CC8DBB4C003 Auftragsbestätigung senden --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-DCF5CEC1-0C21-4BE8-BA02-C70522B864AA Auftragsstornierung senden --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-24D1978A-2852-4BBB-946C-68E17547519C Forschungen einleiten --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-B7D3EC60-EAEE-4594-A016-5B46D4359125 Herstellungsprozess einleiten --->
        if (5 == taskID && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-48A887EF-89AB-404B-93A3-AA3401E32F92 Auftrag und Kapazitäten überprüfen --->
        if (6 == taskID && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-DFFAB4E3-594A-472C-92DE-14806C638BAF Rechtliche Aspekte überprüfen --->
        if (7 == taskID && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-98A8C0FD-93D5-4AE6-A018-DDAFDEB9479A Qualitätskontrolle durchführen --->
        if (8 == taskID && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-5334FE47-DD51-49CA-8176-4B9DF7415F4E Ursachen analysieren --->
        if (9 == taskID && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-BC5EFE3A-707F-47D6-8227-DE4753477F70 Probe ausliefern --->
        if (10 == taskID && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-02ACAA68-B584-43E2-B00F-E051ABD75073 Qualitätskontrolle durchführen --->
        if (11 == taskID && msg.sender == participants[20]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-7B533088-1A10-47EB-AB27-710D74341063 Anzahl überprüfen --->
        if (12 == taskID && msg.sender == participants[22]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-BB48F939-F07D-4C27-B96B-02424B7776D3 Reklamation senden --->
        if (13 == taskID && msg.sender == participants[24]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-CA197233-FA4B-497C-B86F-5C1B36EA22DF Auftragsstornierung senden --->
        if (14 == taskID && msg.sender == participants[26]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8192);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
