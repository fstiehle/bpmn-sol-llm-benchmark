// test openai/gpt-4.1 - two-shot at 2025-06-12T01:56:59.421Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_a451ac4c_9f1c_4c6c_8bba_955fbad275cd {
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
        // <--- sid-108E4ABE-4DB0-44C2-8647-91EC4B6524B7 Ware reklamieren --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-813DE3BA-8680-45CB-925D-ED87F741FA23 RetourEtikett erstellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EEE1B15D-5719-483C-8B5A-55043DDC82FA Ware abschicken --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-429BDAF2-1423-458C-B9EB-EBC8FE1DA435 Geld zurueck --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-FB127610-7505-4F9E-ACA7-836BB1D685A4 Ware zurueck --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway sid-FCC2BF6C-D7AB-430F-BC38-3A10AEB6D9EC ("Ware ok?")
      if (_tokenState & 8 == 8) {
        // Outgoing: sid-CAB222DD-C1C5-4B70-92CE-160041D6701C (default), sid-41C66269-1A75-43BB-9E00-D6C3A6962F2A (cond: conditions & 1 == 1)
        bool matched = false;
        if (conditions & 1 == 1) {
          // sid-41C66269-1A75-43BB-9E00-D6C3A6962F2A -> sid-FB127610-7505-4F9E-ACA7-836BB1D685A4
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          matched = true;
        }
        if (!matched) {
          // default: sid-CAB222DD-C1C5-4B70-92CE-160041D6701C -> sid-429BDAF2-1423-458C-B9EB-EBC8FE1DA435
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        }
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}