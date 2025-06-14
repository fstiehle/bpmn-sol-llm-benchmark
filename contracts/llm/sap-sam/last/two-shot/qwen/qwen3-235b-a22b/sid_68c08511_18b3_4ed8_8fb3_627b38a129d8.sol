// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:29:50.130Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_68c08511_18b3_4ed8_8fb3_627b38a129d8 {
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
        // <--- sid-64207994-D12D-429F-B981-FC3AF1F538AD Solicitar cotización --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- sid-66843A52-3084-4206-A53A-6E901F41424D Acepta cotización --->
        if (conditions & 1 == 1) {
          // Follow conditional path
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        } else {
          // Follow default path (Si)
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
      }
      
      if (_tokenState & 4 == 4) {
        // <--- sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032 Comprar productos --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid-CEDCB979-3CDF-4A45-8F86-DE3EF441FD5A Solicitar abastecimiento --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- sid-393B71C1-5AD9-41AD-B3BA-D9BF2B1B7ECD Enviar productos --->
        if (4 == id && msg.sender == participants[7]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      
      if (_tokenState & 64 == 64) {
        // <--- sid-158216D4-816D-4A7A-BCA1-EB11DD8FF8B1 EndEvent --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
      }
      
      if (_tokenState & 16 == 16) {
        // <--- sid-158216D4-816D-4A7A-BCA1-EB11DD8FF8B1 EndEvent --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
