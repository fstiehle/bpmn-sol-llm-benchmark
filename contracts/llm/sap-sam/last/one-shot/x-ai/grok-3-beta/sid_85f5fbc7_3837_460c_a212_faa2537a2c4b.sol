// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:03:44.188Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_one_shot_sid_85f5fbc7_3837_460c_a212_faa2537a2c4b {
  uint public tokenState = 1; // Start event active
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-62144C98-56C7-4D51-9930-6185865EF924 prijavljivanje problema --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Move to next task
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-FE51912A-8320-4763-8606-42CC18A7C84A dobijanje detaljnog opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4; // Move to gateway
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-228C1203-5E11-4DBD-B5A1-218694A53EBD exclusive gateway --->
        if (conditions & 1 == 1) {
          // Follow conditional path
          _tokenState &= ~uint(4);
          _tokenState |= 16; // Move to sid-AE5730CF-5C7A-45D9-AD7D-182C260E2A2F
          continue;
        } else {
          // Follow default path
          _tokenState &= ~uint(4);
          _tokenState |= 8; // Move to sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC davanje instrukcija za resavanje problema --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0; // End of process
          id = 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-AE5730CF-5C7A-45D9-AD7D-182C260E2A2F prosledjivane problema podrsci --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32; // Move to next task
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-4F9692D5-AF9B-4D10-8BB6-2950149B3559 dostavljanje resenja problema --->
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 8; // Move back to sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC
          id = 0;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}