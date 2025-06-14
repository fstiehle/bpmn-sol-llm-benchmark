// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T11:02:18.166Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_4403d60b_6072_427f_8914_d05f126ac4a4 {
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
        // <--- ChoreographyTask: Pronalaženje dostupnog primjerka knjige --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask: Posuđivanje knjige --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- Exclusive Gateway --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask: Vraćanje posuđene knjige --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask: Registriranje gubitka knjige --->
        if (4 == id && msg.sender == participants[7]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- Exclusive Gateway --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask: Plaćanje vrijednosti izgubljene knjiige --->
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask: Plaćanje zakasnine --->
        if (6 == id && msg.sender == participants[11]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask: Rezerviranje knjige --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
