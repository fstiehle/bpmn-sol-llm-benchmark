// test openai/gpt-4.1 - one-shot at 2025-06-11T23:39:27.568Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_4d7002e8_d91f_4c7c_a964_34a6b62cff72 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-EC41FCC8-D686-462C-9493-2F2CDFA9052F --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for sid-EC41FCC8-D686-462C-9493-2F2CDFA9052F here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA --->
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for sid-B3B704F6-A4D9-4A05-AC7E-148AD86F62BA here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for sid-FF1E089C-C290-4134-BBB5-49D2DB25CCF2 here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-7B36D673_5B79_45DE_A171_D780235447B1 --->
      if (_tokenState & 2 == 2) {
        bool matched = false;
        // <--- condition: conditions & 1 == 1 --->
        if ((conditions & 1 == 1)) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          matched = true;
          continue;
        }
        if (!matched) {
          // default flow
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- end event: clear tokenState --->
      if (_tokenState & 32 == 32) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}