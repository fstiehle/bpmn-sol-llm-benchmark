// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:59:11.852Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_923a2bb4_1051_4f29_87dd_6e5b375e9683 {
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
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-CC04E9FF-9B18-42B9-8659-9795E407D833 Neues Ticket wird angelegt --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-69D7C076-711B-4D8C-940B-54C78B465664 Verschickt Nummer des Tickets als Bestätigung --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-8307F677-3914-4976-BB3B-46E91FEF8124 Beginnt mit Anfragebearbeitung --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-5F138745-7938-4217-836B-B96910ECB793 fordit Informationen beim Kunden an --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-E6E6D035-AA1B-48DA-A8A4-C8E2AF2029D5 sendet Lösung an Kunde --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-7280E92C-ECF4-46A5-A5E2-63309CC974E5 sendet erforderliche Informationen --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
