// test openai/gpt-4.1 - one-shot at 2025-06-11T23:51:36.048Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_7c94b3cf_1690_4cd3_849d_70ab08e4a3be {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-28797948-6051-4099-B0E3-0EB61D39DA83 Auftrag erteilen --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task Auftrag erteilen here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-62240596-E858-4B70-BF73-328E10A4C333 Verfugbarkeit abfragen --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task Verfugbarkeit abfragen here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- sid-AE277DA3-0FB0-4731-AF32-8A88549CC18F Grafik erstellen lassen --->
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task Grafik erstellen lassen here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // <--- sid-C0390980-0D2E-4B7C-B6AC-0585518CDC4A Freigabe einholen --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task Freigabe einholen here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}