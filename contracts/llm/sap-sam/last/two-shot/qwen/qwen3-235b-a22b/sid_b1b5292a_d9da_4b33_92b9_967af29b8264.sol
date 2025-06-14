// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T16:16:26.983Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-8D30ABAD Zapłata za towar --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-6AC65B84 Czy zapłata się powiodła? --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          _tokenState &= ~uint(2);
          break;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-F4EB5C5A Realizacja zamówienia, przesłanie informacji o przesyłce --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-17C76E1F Aktualizacja danych na stronie --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-C8D7C501 Przekazanie towaru kurierowi --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-884E65EB Wysłanie informacji o przybyciu kuriera w danym dniu o danej godzinie, próba doręczenia przesyłki --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-E22F1585 Czy dostarczono przesyłkę? --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
        } else {
          _tokenState &= ~uint(64);
          break;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-CE1ACF04 Przekazanie do punktu odbiorczego --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(128);
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
