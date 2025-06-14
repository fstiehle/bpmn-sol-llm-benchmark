// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:37:19.785Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
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
      if (_tokenState & 1 == 1) {
        // <--- StartEvent sid-21218B64-CFF8-46E7-8DE7-E16AC913BBB8 --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_6E7BC75D-207E-4D80-9AE8-CD7A71E4F01A Anfrage auf Reparatur stellen / Produkt an reBuy senden --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_EDC95EBB-1DB2-45EB-B9F1-DE20B008C455 Pruefung_ob_es_sich_um_einen_Garantiefall_handelt --->
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(4);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ExclusiveGateway_6BFA1C27-514B-4C3B-A065-8B951BB1657C --->
        if (conditions & 1 == 1) {
          _tokenState |= 16;
        }
        if ((_tokenState & 16) == 0) {
          _tokenState |= 8;
        }
        _tokenState &= ~uint(1024);
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_25AA23A0-E09A-4708-8B06-8184876E4159 Kunde_erhaelt_Geraet_zurueck_erhaelt_eine_Absage --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_492CD1C4-81EB-4B4B-B3C1-7BF00708AE5D Support_nimmt_sich_dem_defekten_Geraet_an_Garantiefall_bewilligt --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_2D44CA56-2A4B-4959-B2A0-7326289F57BD Anfrage_an_Reparaturdienst_Pruefung_ob_Geraet_reparierbar_ist --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ExclusiveGateway_2D954C33-5DAD-4D1D-928B-6B68D081BCEC --->
        if (conditions & 2 == 2) {
          _tokenState |= 128;
        }
        if ((_tokenState & 128) == 0) {
          _tokenState |= 64;
        }
        _tokenState &= ~uint(2048);
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_C0F110DA-170A-4626-816B-1BFAC6FD1E50 Ablehnung_Geraet_ist_irreparabel_defekt --->
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_350EC8A3-700F-46EC-AC45-0F67663518EC Kunde_erhaelt_Kaufbetrag_zurueckerstattet --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(256);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_D8CFBA70-4C1A-4408-94A2-D5DB6A9AEC25 Geraet_reparieren_lassen --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_9A2B984C-85DA-4FDA-A60A-8CDAA4B4F902 Reparatur_erfolgreich_Produkt_kann_zurueck_gesendet_werden --->
        if (9 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(512);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
