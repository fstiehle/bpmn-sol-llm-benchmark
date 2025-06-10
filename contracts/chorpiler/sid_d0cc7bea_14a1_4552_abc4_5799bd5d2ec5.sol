//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_d0cc7bea_14a1_4552_abc4_5799bd5d2ec5 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-D221C965-EA54-4EDA-A44C-9D807BA934D7 Slanje problema --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-682F1A0D-7CBF-4CBC-83BB-5CC3FA013BC8 Dobijanje detaljnijeg opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-39FEE08C-5112-4E3C-9829-3299ED4D7551 Slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-97577EB8-D0F7-4493-82AD-A85780E0DA9A Pitanje podrske I nivoa --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-DC61CE61-A7ED-4B5E-8E35-459E2D66B80E Slanje resenja --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 2 == 2) {
          // <--- sid-DB64B161-046B-4E6D-91E2-60612A94626C Pitanje podrske II nivoa --->
          if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-ADD7ED9A-AF98-4EC8-9A82-45FCFDDC7D05 Slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
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