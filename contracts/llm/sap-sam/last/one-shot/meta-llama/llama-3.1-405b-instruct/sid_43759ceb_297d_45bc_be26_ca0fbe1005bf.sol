// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:52:12.870Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_43759ceb_297d_45bc_be26_ca0fbe1005bf {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-F7F3C968-49FE-4E45-9D23-88A8D6512528 Korisnik ima problem --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-CFB94369-6DC6-4A48-8CB3-0224494D2054 Zahtevanje detaljnijeg opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-43D5C23B-4BAF-4D90-A088-FECE19108670 Konsultovanje podrške I nivoa --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-31D3A0CF-717F-4EF7-9B47-774CB8A8215D Saopštavanje rešenja problema korisniku --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-DECE56B3-AD26-4313-9744-49DF2A6C6A9F Saopštavanje rešenja problema operateru --->
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-968CBB3E-23E7-4AC0-87A5-75DA650EE511 Konsultovanje podrške II nivoa --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-8AC8B7C6-BE9D-4CD0-B309-0D83C70F7C21 Saopštavanje rešenja problema podršci I nivoa --->
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
