// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:57:09.329Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_4f03bfac_6870_4951_8bba_a7e16355e589 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;
  mapping(uint => uint) public taskIds;
  constructor(address[22] memory _participants) {
    participants = _participants;
    taskIds[1] = 1;
    taskIds[2] = 2;
    taskIds[3] = 3;
    taskIds[4] = 4;
    taskIds[5] = 5;
    taskIds[6] = 6;
    taskIds[7] = 7;
    taskIds[8] = 8;
    taskIds[9] = 9;
    taskIds[10] = 10;
    taskIds[11] = 11;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_83CB8E6A-7855-491F-ACE4-5568B085B0AA Fragt Werbeanzeige an --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_2C45C0B5-E718-4493-9F12-EA484F4A9002 Sendet Angebot --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // Gateway_3548761B-AF17-48B9-B2F6-893FFCF1C9E5
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        } else if (conditions & 1 == 1) {
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
        // <--- ChoreographyTask_155E169F-4D9C-43D8-AEBD-812EE590BBAE Fragt Verfügbarkeit an --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_CC8C53B3-1170-4020-887C-0A8DD1833C47 äußert Änderungswunsch --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3 erteilt Auftrag --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_582D082F-E935-4D39-8D4F-684C36A51CD9 erteilt Auftrag --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // Gateway_6D663699-99E8-4687-A101-4E208D28D935
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue; 
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_5A5EEB58-D5C0-4F44-AD9E-253CA3C6EA66 liefert Grafik --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_B2528142-9302-43B2-AB89-491A0232D7AF erfragt Freigabe --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // Gateway_60A13C3B-4A44-4D3B-8604-D291100B2679
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_7A4631E5-4035-4BC3-B06D-F0185FA000A3 sendet Änderungswunsch --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_7AEEA2EE-8510-42E5-9332-EE09CBBC71AE Erteilt Freigabe --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
