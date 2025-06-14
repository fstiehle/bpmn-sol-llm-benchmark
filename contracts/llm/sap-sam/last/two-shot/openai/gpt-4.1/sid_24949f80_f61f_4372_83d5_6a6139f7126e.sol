// test openai/gpt-4.1 - two-shot at 2025-06-12T00:14:54.722Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_24949f80_f61f_4372_83d5_6a6139f7126e {
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
      // <--- sid-2A8C519B-FA14-48DA-9551-53685209B7F3 Anfrage stellen --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-17E8C140-858E-4263-8049-98F7DA801390 Angebot vorlegen --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- Exclusive Gateway sid-A98A2F83-9C3D-4AC5-ACD1-7878EF55E3E2 --->
      if (_tokenState & 4 == 4) {
        // diverging exclusive gateway, choose between Absage (sid-F80E4543-2ECB-464B-A37D-243945E38A27) or Zusage (sid-CCF831C8-84D6-4DB1-9F15-73E236241023)
        // There is no explicit condition, so both paths are enabled, model expects user to pick only one
        // So we activate both bits (8 | 16) and let user call the one they want
        _tokenState &= ~uint(4);
        _tokenState |= 24;
        continue;
      }
      // <--- sid-F80E4543-2ECB-464B-A37D-243945E38A27 Angebot ablehnen --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-CCF831C8-84D6-4DB1-9F15-73E236241023 Angebot zusagen --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // <--- sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54 Verfugbarkeit prufen --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA Kaffeebohnen bestellen --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      // <--- sid-321D60EE-2226-4B45-91C2-440C52F3C3BA Kaffeebohnen liefern --->
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}