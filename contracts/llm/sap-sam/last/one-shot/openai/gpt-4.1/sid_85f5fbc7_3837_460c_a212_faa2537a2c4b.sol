// test openai/gpt-4.1 - one-shot at 2025-06-11T23:54:38.157Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_85f5fbc7_3837_460c_a212_faa2537a2c4b {
  // Bits:
  // 1: prijavljivanje_problema (sid-62144C98-56C7-4D51-9930-6185865EF924)
  // 2: dobijanje_detaljnog_opisa_problema (sid-FE51912A-8320-4763-8606-42CC18A7C84A)
  // 4: ekskluzivni_gw1 (sid-228C1203_5E11_4DBD_B5A1_218694A53EBD)
  // 8: davanje_instrukcija_za_resavanje_problema (sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC)
  // 16: prosledjivane_problema_podrsci (sid-AE5730CF-5C7A-45D9-AD7D-182C260E2A2F)
  // 32: dostavljanje_resenja_problema (sid-4F9692D5-AF9B-4D10-8BB6-2950149B3559)
  // 64: END

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
    while (_tokenState != 0) {

      // prijavljivanje_problema: taskID 1, initiator participants[0]
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // dobijanje_detaljnog_opisa_problema: taskID 2, initiator participants[3]
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          // custom code
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // ekskluzivni_gw1
      if (_tokenState & 4 == 4) {
        // sid-228C1203-5E11-4DBD-B5A1-218694A53EBD
        // outgoing:
        // sid-65755534-062E-413C-9803-19D8F9F0D25C: da (to sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC)
        // sid-6D08094A-A97B-4C24-9F38-82FE835D695E: conditions & 1 == 1 (to sid-AE5730CF-5C7A-45D9-AD7D-182C260E2A2F) [condition]
        // default: sid-65755534-062E-413C-9803-19D8F9F0D25C: to sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC (since default=da)
        bool taken = false;
        // Conditioned outgoing
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          taken = true;
          continue;
        }
        // Default outgoing (da): to sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC
        if (!taken) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }

      // davanje_instrukcija_za_resavanje_problema: taskID 3, initiator participants[5]
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[5]) {
          // custom code
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }

      // prosledjivane_problema_podrsci: taskID 4, initiator participants[6]
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      // dostavljanje_resenja_problema: taskID 5, initiator participants[9]
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[9]) {
          // custom code
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }

      // END: sid-B68D0FB3-FA75-40E9-A6C3-5B5CC1FB042A (from sid-C2D72027-CC9C-43BA-9465-97AE1B827EAC)
      if (_tokenState & 64 == 64) {
        _tokenState = 0;
        break;
      }

      break;
    }
    tokenState = _tokenState;
  }
}