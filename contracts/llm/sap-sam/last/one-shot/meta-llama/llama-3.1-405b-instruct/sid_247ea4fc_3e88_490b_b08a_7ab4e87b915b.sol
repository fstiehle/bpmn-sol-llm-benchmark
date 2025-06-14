// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:33:51.654Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_247ea4fc_3e88_490b_b08a_7ab4e87b915b {
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
        // <--- sid-0BA1CF17-3DB0-4F87-BB9B-9744CAD35C0E enviar orden de compra --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F Confirmación de orden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-218B56E6-2B14-4C26-9C7B-0EC315282FB5 comprar materia prima --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-E8A13914-8E0A-406E-BC57-139A04D44273 Envío del producto --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 Factura al cliente --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 6 == 6) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(6);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(6);
          _tokenState |= 2;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 2;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 96 == 96) {
        // <---  auto transition  --->
        _tokenState &= ~uint(96);
        _tokenState |= 128;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
