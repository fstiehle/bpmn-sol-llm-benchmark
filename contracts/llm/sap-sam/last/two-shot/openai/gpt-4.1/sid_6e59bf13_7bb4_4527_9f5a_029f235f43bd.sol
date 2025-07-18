// test openai/gpt-4.1 - two-shot at 2025-06-12T01:12:37.824Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6e59bf13_7bb4_4527_9f5a_029f235f43bd {
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
        // <--- sid-FEB1E7DE-541C-4759-ADDF-D0FCB36AB7C4 Prijavljivanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-CF6CD4A9-274F-48D2-A788-6131CDA1B213 Dobijanje detaljnog opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-99843370-A4A0-430E-87F6-9629601054A6 Prosledjivanje problema tehnickoj podrsci --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-6D089489-260C-4F14-A989-F2D3BF5BE36B Dostavljanje resenja problema --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-472D6D96-F451-4FD9-BF4C-51039C9D1080 Davanje instrukcija za resavanje problema --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway sid-2BA44D39-0D1D-4E70-9A6A-4201BDFE0471
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- to sid-472D6D96-F451-4FD9-BF4C-51039C9D1080 --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue; 
        }
        // default: to sid-99843370-A4A0-430E-87F6-9629601054A6
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        continue; 
      }
      // After sid-99843370-A4A0-430E-87F6-9629601054A6, auto to sid-6D089489-260C-4F14-A989-F2D3BF5BE36B
      if (_tokenState & 16 == 16) {
        // handled in main task block above
      }
      // After sid-6D089489-260C-4F14-A989-F2D3BF5BE36B, auto to sid-472D6D96-F451-4FD9-BF4C-51039C9D1080
      if (_tokenState & 32 == 32) {
        // handled in main task block above
      }
      break;
    }
    tokenState = _tokenState;
  }
}
