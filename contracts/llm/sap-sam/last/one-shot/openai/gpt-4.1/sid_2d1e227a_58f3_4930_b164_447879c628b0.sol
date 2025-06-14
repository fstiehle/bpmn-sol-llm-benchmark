// test openai/gpt-4.1 - one-shot at 2025-06-11T23:32:18.699Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2d1e227a_58f3_4930_b164_447879c628b0 {
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
      // sid-5343FBBE-1949-4189-834C-AF7944006D10: Kundenanruf (taskID 1), bit 1
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-0DA543ED-E104-44FD-828B-4D8D3F76BA93: Loesung erklaeren (taskID 2), bit 32
      if (_tokenState & 32 == 32) {
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // End event
        }
      }
      // sid-D1D080CD-56C8-404E-BC5B-10F44648B5C8: Problem weitergeben (taskID 3), bit 4
      if (_tokenState & 4 == 4) {
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // sid-6E64DF59-42FE-4D07-B24B-39C00BAA57CF: Service_Techniker anrufen (taskID 4), bit 8
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[7]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-2ABDB270-FA4E-4B15-A8A2-DAC816309C9C: Zu Kunde fahren (taskID 5), bit 16
      if (_tokenState & 16 == 16) {
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-7A508341-210E-493A-8EC3-B0E2D57D81F2: Problem loesen (taskID 6), bit 64
      if (_tokenState & 64 == 64) {
        if (id == 6 && msg.sender == participants[11]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // sid-F69420E0-7365-4D69-9A71-ADB0BF7BC50D: Formular unterschreiben lassen (taskID 7), bit 128
      if (_tokenState & 128 == 128) {
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // End event
        }
      }
      // sid-6B3AA898-9DAB-467A-BC1C-05B31EAB24B8: ExclusiveGateway, bit 2
      if (_tokenState & 2 == 2) {
        // sid-9038A654-1FF7-43DC-9AFF-33B1F62CD01C: conditions & 1 == 1, goes to sid-0DA543ED-E104-44FD-828B-4D8D3F76BA93 (bit 32)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 32;
          continue;
        }
        // Default: sid-9E8C153E-F776-45F9-8B67-A0739BE1210A to sid-D1D080CD-56C8-404E-BC5B-10F44648B5C8 (bit 4)
        else {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}