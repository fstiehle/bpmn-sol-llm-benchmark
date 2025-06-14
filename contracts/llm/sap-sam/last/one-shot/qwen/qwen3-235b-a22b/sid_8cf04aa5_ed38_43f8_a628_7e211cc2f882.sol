// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:42:41.022Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_8cf04aa5_ed38_43f8_a628_7e211cc2f882 {
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
        // <--- ChoreographyTask sid-A981B3EA-FC92-4ABE-9906-A9AB18283EAC przyjmij pacjenta --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-0A2B5205-D3C8-4D18-8617-B059BA9DF38D zapisz pacjenta --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ExclusiveGateway sid-A448521E-0933-448B-A270-8EC27F0CC5B3 --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA wyslanie organu --->
        if (3 == id && msg.sender == participants[5]) {
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12 wyslanie odwolania --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ExclusiveGateway sid-1FEF189D-8FDA-48C4-B234-28C9600F06EF --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- EndEvent --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
