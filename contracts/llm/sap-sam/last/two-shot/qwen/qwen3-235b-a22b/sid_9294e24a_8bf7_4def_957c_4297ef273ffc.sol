// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T14:27:31.393Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_9294e24a_8bf7_4def_957c_4297ef273ffc {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-76C63599-3DD6-4043-A2B8-0BB8FBBD2AAF Anfrage verschicken --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-85270B8F-7310-43BE-943A-7C865FF23F69 Angebot erstellen --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-3CAAC027-DED0-416B-A8BB-98D1A0B7239B Angebot ablehnen --->
          if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        if (conditions & 2 == 2) {
          // <--- sid-C019EE0F-1EB1-42AC-98D4-F0710AD56207 Angebot annehmen --->
          if (5 == id && msg.sender == participants[9]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
        // Follow default sequence flow
        if (conditions & 1 == 1) {
          // <--- sid-E74407BF-FE6F-4217-A9AA-34EF09DD9CCF Änderungswunsch für das Angebot --->
          if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          id = 0;
          continue; 
          }
        }
        break;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-4D1701E5-F5D9-46C7-BE19-68F0F3CDAF33 Verfügbarkeit abfragen --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-FDECA237-E60D-49F9-BD7F-ED9E9D02AD37 Grafik erstellen lassen --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-30D67DEB-801C-49C7-9CEE-A5B3898418D4 Freigabe einholen --->
        if (8 == id && msg.sender == participants[14]) {
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
