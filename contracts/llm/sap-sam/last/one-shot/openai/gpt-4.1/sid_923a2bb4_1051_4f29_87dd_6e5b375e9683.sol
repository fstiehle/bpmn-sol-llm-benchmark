// test openai/gpt-4.1 - one-shot at 2025-06-11T23:57:56.977Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_923a2bb4_1051_4f29_87dd_6e5b375e9683 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-CC04E9FF-9B18-42B9-8659-9795E407D833: Neues Ticket wird angelegt (taskID 1, initiator: participants[0])
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for task 1 here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-69D7C076-711B-4D8C-940B-54C78B465664: Verschickt Nummer des Tickets als Bestaetigung (taskID 2, initiator: participants[2])
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code for task 2 here
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-8307F677-3914-4976-BB3B-46E91FEF8124: Beginnt mit Anfragebearbeitung (taskID 3, initiator: participants[4])
      if (_tokenState & 4 == 4) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code for task 3 here
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway sid-396FA554_6BD9_4DE1_A934_3A7D583EAF53 (bit 8)
      if (_tokenState & 8 == 8) {
        // sid-71CDE76F-2166-4FC6-907E-89AE907B8D7A: conditions & 1 == 1
        if (conditions & 1 == 1) {
          // go to sid-E6E6D035-AA1B-48DA-A8A4-C8E2AF2029D5 (taskID 5, bit 32)
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        } else {
          // default: sid-EBECE0F1-1718-43AC-B0BD-21F2C29FC75F -> sid-5F138745-7938-4217-836B-B96910ECB793 (taskID 4, bit 16)
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      // sid-5F138745-7938-4217-836B-B96910ECB793: fordert Informationen beim Kunden an (taskID 4, initiator: participants[6])
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code for task 4 here
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-7280E92C-ECF4-46A5-A5E2-63309CC974E5: sendet erforderliche Informationen (taskID 6, initiator: participants[10])
      if (_tokenState & 64 == 64) {
        if (id == 6 && msg.sender == participants[10]) {
          // custom code for task 6 here
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-E6E6D035-AA1B-48DA-A8A4-C8E2AF2029D5: sendet Loesung an Kunde (taskID 5, initiator: participants[8])
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[8]) {
          // custom code for task 5 here
          _tokenState &= ~uint(32);
          // End event
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
