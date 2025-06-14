// test openai/gpt-4.1 - two-shot at 2025-06-12T00:14:30.734Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_247ea4fc_3e88_490b_b08a_7ab4e87b915b {
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
      // <--- sid-0BA1CF17-3DB0-4F87-BB9B-9744CAD35C0E enviar orden de compra --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F Confirmacion de orden --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // <--- sid-218B56E6-2B14-4C26-9C7B-0EC315282FB5 comprar materia prima --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- sid-E8A13914-8E0A-406E-BC57-139A04D44273 Envio del producto --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // <--- sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 Factura al cliente --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-48CDBBB4-3F12-4D9E-A27A-C2D545252764 Exclusive Gateway --->
      if (_tokenState & 2 == 2) {
        bool matched = false;
        // condition: conditions & 1 == 1 --> sid-4B13E042-8B31-4311-815D-12670881E66F --> sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F (task 2)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          matched = true;
          continue;
        }
        // default: sid-D56AF128-53E5-4750-B8D4-E50A205A301B --> sid-218B56E6-2B14-4C26-9C7B-0EC315282FB5 (task 3)
        if (!matched) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- sid-902612B5-04B6-4A1C-8060-BB1F4CA704AF Parallel Gateway (Diverging) --->
      if (_tokenState & 8 == 8) {
        // sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F -> sid-0DB1156D-17E0-4535-BFF6-6EAFB22A8FAD -> sid-902612B5-04B6-4A1C-8060-BB1F4CA704AF
        // sid-902612B5-04B6-4A1C-8060-BB1F4CA704AF splits to sid-EF98C1D9-A5C0-4348-867E-6A0F34F857B6 and sid-194CD1F4-F97B-4C7A-8070-D3D6451E0C71
        _tokenState &= ~uint(8);
        _tokenState |= 48;
        continue;
      }
      // <--- sid-D6C2AB20-92CF-4EA9-B20C-2468FEDFD3B3 Parallel Gateway (Converging) --->
      if (_tokenState & 192 == 192) {
        // Wait for both sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 (64) and sid-E8A13914-8E0A-406E-BC57-139A04D44273 (128) to complete
        _tokenState &= ~uint(192);
        _tokenState |= 0;
        break; // is end
      }
      // sid-EF98C1D9-A5C0-4348-867E-6A0F34F857B6 --> sid-E8A13914-8E0A-406E-BC57-139A04D44273 (task 4)
      if (_tokenState & 16 == 16) {
        // handled above in task 4
      }
      // sid-194CD1F4-F97B-4C7A-8070-D3D6451E0C71 --> sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 (task 5)
      if (_tokenState & 32 == 32) {
        // handled above in task 5
      }
      // sid-B7837222-78F5-4F0A-9BF0-12353BAA508D (64) and sid-111EF3F5-A3B6-45D0-BFE4-D7AC40AED09C (128) are just path tokens for join
      // When both 64 and 128 are set, the join is handled above
      // No further transitions
      break;
    }
    tokenState = _tokenState;
  }
}
