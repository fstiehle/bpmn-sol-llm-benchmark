// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:44:22.723Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_6e59bf13_7bb4_4527_9f5a_029f235f43bd {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-FEB1E7DE-541C-4759-ADDF-D0FCB36AB7C4 Prijavljivanje problema --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-CF6CD4A9-274F-48D2-A788-6131CDA1B213 Dobijanje detaljnog opisa problema --->
        if (2 == taskID && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- exclusive gateway sid-2BA44D39-0D1D-4E70-9A6A-4201BDFE0471 Da Jane Doe  zna da reši problem? --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-472D6D96-F451-4FD9-BF4C-51039C9D1080 Davanje instrukcija za rešavanje problema --->
        if (3 == taskID && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-99843370-A4A0-430E-87F6-9629601054A6 Prosledjivanje problema tehničkoj podršci --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-6D089489-260C-4F14-A989-F2D3BF5BE36B Dostavljanje rešenja problema --->
        if (5 == taskID && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
