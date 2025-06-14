// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:54:12.886Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_68c08511_18b3_4ed8_8fb3_627b38a129d8 {
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
        // <--- Solicitar cotizacion --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Acepta cotizacion --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          continue; 
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- Comprar productos --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- Solicitar abastecimiento --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- Enviar productos --->
        if (4 == id && msg.sender == participants[7]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; 
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
