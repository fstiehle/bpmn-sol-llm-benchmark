// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:20:32.072Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_19396877_be94_440c_98de_2cc3f663a397 {
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
        // <--- sid-8C65E42B-E757-4E52-B61B-8848CA9503FC Definiranje problema --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5A4ADFFF-1BB4-4EB8-A933-FE6DE6BF79FF Istrazivanje problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-5E4EC884-D666-4075-A435-CF8788D1DAE2 Slanje rjesenja --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-73121FA6-3845-470E-A214-0579501D074D Detaljno istrazivanje problema --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-D58A80C2-5366-4EAF-85D6-FF528974749C Exclusive Gateway --->
        if (conditions & 1 == 1) {
          // <--- auto transition conditions & 1 == 1 --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue; 
        } else {
          // <--- default path --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-1DBE80B3-FBFF-4331-93CF-C84BF98387D3 Converging Gateway --->
        // <--- auto transition --->
        _tokenState &= ~uint(32);
        _tokenState |= 8;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}