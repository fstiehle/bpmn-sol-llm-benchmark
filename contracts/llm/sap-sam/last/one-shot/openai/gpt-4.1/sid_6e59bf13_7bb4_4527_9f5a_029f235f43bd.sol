// test openai/gpt-4.1 - one-shot at 2025-06-11T23:47:45.645Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_6e59bf13_7bb4_4527_9f5a_029f235f43bd {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-FEB1E7DE-541C-4759-ADDF-D0FCB36AB7C4 Prijavljivanje_problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-CF6CD4A9-274F-48D2-A788-6131CDA1B213 Dobijanje_detaljnog_opisa_problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway sid-2BA44D39-0D1D-4E70-9A6A-4201BDFE0471
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // condition: conditions & 1 == 1  (sid-81CB0ECB-E122-4FB5-A68C-183409264439)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          transitioned = true;
        }
        if (!transitioned) {
          // default flow (sid-94E10A11-5EDA-4B71-99F8-674D6B4CC029)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-472D6D96-F451-4FD9-BF4C-51039C9D1080 Davanje_instrukcija_za_resavanje_problema --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-99843370-A4A0-430E-87F6-9629601054A6 Prosledjivanje_problema_tehnickoj_podrsci --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-6D089489-260C-4F14-A989-F2D3BF5BE36B Dostavljanje_resenja_problema --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}