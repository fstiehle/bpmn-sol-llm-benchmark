// test openai/gpt-4.1 - one-shot at 2025-06-12T00:06:41.028Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
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
      // <--- sid-6E7BC75D-207E-4D80-9AE8-CD7A71E4F01A Anfrage_auf_Reparatur_stellen_Produkt_an_reBuy_senden --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-EDC95EBB-1DB2-45EB-B9F1-DE20B008C455 Pruefung_ob_es_sich_um_einen_Garantiefall_handelt --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- Exclusive Gateway Garantiefall? (sid-6BFA1C27-514B-4C3B-A065-8B951BB1657C) --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        // sid-BA961A8C-2A98-45E7-809D-8F1E3B68B651: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
          continue;
        }
        // sid-10D89131-701C-4F00-9D0D-A581962B2928: default
        if (!didTransition) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- sid-25AA23A0-E09A-4708-8B06-8184876E4159 Kunde_erhaelt_Geraet_zurueck_erhaelt_eine_Absage --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-492CD1C4-81EB-4B4B-B3C1-7BF00708AE5D Support_nimmt_sich_dem_defekten_Geraet_an_Garantiefall_bewilligt --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-2D44CA56-2A4B-4959-B2A0-7326289F57BD Anfrage_an_Reparaturdienst_Pruefung_ob_Geraet_reparierbar_ist --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- Exclusive Gateway reparierbar? (sid-2D954C33-5DAD-4D1D-928B-6B68D081BCEC) --->
      if (_tokenState & 64 == 64) {
        bool didTransition = false;
        // sid-4AB0F485-2C68-465A-BF95-4F268E2B28C2: conditions & 2 == 2
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          didTransition = true;
          continue;
        }
        // sid-68B4895F-9E4E-4BA3-96F0-AD15C68E4945: default
        if (!didTransition) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      // <--- sid-C0F110DA-170A-4626-816B-1BFAC6FD1E50 Ablehnung_Geraet_ist_irreparabel_defekt --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // <--- sid-D8CFBA70-4C1A-4408-94A2-D5DB6A9AEC25 Geraet_reparieren_lassen --->
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // <--- sid-350EC8A3-700F-46EC-AC45-0F67663518EC Kunde_erhaelt_Kaufbetrag_zurueckerstattet --->
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-9A2B984C-85DA-4FDA-A60A-8CDAA4B4F902 Reparatur_erfolgreich_Produkt_kann_zurueck_gesendet_werden --->
      if (_tokenState & 1024 == 1024) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
