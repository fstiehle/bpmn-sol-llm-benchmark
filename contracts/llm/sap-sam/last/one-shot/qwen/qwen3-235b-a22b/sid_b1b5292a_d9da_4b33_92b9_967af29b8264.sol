// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:33:47.408Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
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
        // <--- sid-8D30ABAD-3927-4172-9CE2-67F00C02E2C5 Zapla_ata_za_towar --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F4EB5C5A-7A7E-4B28-8573-394A547027FC Realizacja_zamowienia_przeslanie_informacji_o_przesylce --->
        if (2 == id && msg.sender == participants[3]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-17C76E1F-DF07-41C5-AB96-67878F5FDAB1 Aktualizacja_danych_na_stronie --->
        if (3 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C8D7C501-EE1C-4921-80FC-FAB3063BD75A Przekazanie_towaru_kurierowi --->
        if (4 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-884E65EB-CD77-45E9-A251-AC64A7163CD5 Wyslanie_informacji_o_przybyciu_kuriera_w_danym_dniu_o_danej_godzinie_próba_doreczenia_przesylki --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-CE1ACF04-6606-4523-8B8D-AB0FBEAED0B5 Przekazanie_do_punktu_odbiorczego --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
        else {
          // <---  default transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        }
        else {
          // <---  default transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
