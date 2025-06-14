// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T05:43:41.870Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_247ea4fc_3e88_490b_b08a_7ab4e87b915b {
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
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F Confirmacion de orden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-218B56E6-2B14-4C26-9C7B-0EC315282FB5 comprar materia prima --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-E8A13914-8E0A-406E-BC57-139A04D44273 Envio del producto --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 Factura al cliente --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 160;
        continue; 
      }
      if (_tokenState & 320 == 320) {
        // <---  auto transition  --->
        _tokenState &= ~uint(320);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
