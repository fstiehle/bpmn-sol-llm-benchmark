// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:28:45.784Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_4f03bfac_6870_4951_8bba_a7e16355e589 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;

  constructor(address[22] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-83CB8E6A-7855-491F-ACE4-5568B085B0AA Fragt Werbeanzeige an --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-2C45C0B5-E718-4493-9F12-EA484F4A9002 Sendet Angebot --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Gateway sid-3548761B-AF17-48B9-B2F6-893FFCF1C9E5 --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-CC8C53B3-1170-4020-887C-0A8DD1833C47 äußert Änderungswunsch --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3 erteilt Auftrag --->
        if (5 == taskID && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-9FD7CD92-886A-45AE-8B0D-11B419B780F8 Absage erteilt --->
        if (6 == taskID && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- Gateway sid-CCEF2766-393D-48DF-9A7E-3B65934F37F4 --->
        _tokenState &= ~uint(64);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask sid-155E169F-4D9C-43D8-AEBD-812EE590BBAE Fragt Verfügbarkeit an --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask sid-582D082F-E935-4D39-8D4F-684C36A51CD9 erteilt Auftrag --->
        if (7 == taskID && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- Gateway sid-6D663699-99E8-4687-A101-4E208D28D935 --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask sid-5A5EEB58-D5C0-4F44-AD9E-253CA3C6EA66 liefert Grafik --->
        if (9 == taskID && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask sid-B2528142-9302-43B2-AB89-491A0232D7AF erfragt Freigabe --->
        if (8 == taskID && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- Gateway sid-60A13C3B-4A44-4D3B-8604-D291100B2679 --->
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          continue;
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4096);
          _tokenState |= 16384;
          continue;
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask sid-7AEEA2EE-8510-42E5-9332-EE09CBBC71AE Erteilt Freigabe --->
        if (10 == taskID && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8192);
          _tokenState |= 0;
          break;
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- ChoreographyTask sid-7A4631E5-4035-4BC3-B06D-F0185FA000A3 sendet Änderungswunsch --->
        if (11 == taskID && msg.sender == participants[20]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16384);
          _tokenState |= 32768;
          taskID = 0;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
