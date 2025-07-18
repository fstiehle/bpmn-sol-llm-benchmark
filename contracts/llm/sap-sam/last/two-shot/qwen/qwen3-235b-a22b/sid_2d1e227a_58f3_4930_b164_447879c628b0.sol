// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:45:27.837Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_2d1e227a_58f3_4930_b164_447879c628b0 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-5343FBBE-1949-4189-834C-AF7944006D10 Kundenanruf --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-0DA543ED-E104-44FD-828B-4D8D3F76BA93 Lösung erklären --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-D1D080CD-56C8-404E-BC5B-10F44648B5C8 Problem weitergeben --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-6E64DF59-42FE-4D07-B24B-39C00BAA57CF Service-Techniker anrufen --->
        if (4 == id && msg.sender == participants[7]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-2ABDB270-FA4E-4B15-A8A2-DAC816309C9C Zu Kunde fahren --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-7A508341-210E-493A-8EC3-B0E2D57D81F2 Problem lösen --->
        if (6 == id && msg.sender == participants[11]) {
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-F69420E0-7365-4D69-9A71-ADB0BF7BC50D Formular unterschreiben lassen --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}