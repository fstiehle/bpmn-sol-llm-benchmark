//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_c39a9429_1d58_4e6e_a120_31b3cbfcb503 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-9E469703-A41D-45C6-B860-A97E127F6D79 Angebot erarbeiten --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-6EF97F93-3E99-42E3-8209-438109B9B3C4 Angebot an Kunden senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-8A3448B3-0599-43A6-BF39-68B80DF92A0E Auftrag weiterleiten --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
        // <--- sid-D59F373A-A2C4-494B-B163-4683B7E07841 spezielle Wünsche weiterleiten --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}