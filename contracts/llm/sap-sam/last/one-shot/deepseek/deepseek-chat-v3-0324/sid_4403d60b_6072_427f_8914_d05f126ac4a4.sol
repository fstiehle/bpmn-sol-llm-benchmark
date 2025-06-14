// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:59:00.497Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_4403d60b_6072_427f_8914_d05f126ac4a4 {
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
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-A6663D7A-4D36-4E24-B402-3B6D0CD89938 Pronalaženje dostupnog primjerka knjige --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C Posuđivanje knjige --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 Vraćanje posuđene knjige --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-5E955D68-8136-4843-BDD6-B30855E7FF76 Registriranje gubitka knjige --->
        if (4 == id && msg.sender == participants[7]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-4459D276-4952-4A89-8151-505064149A15 Rezerviranje knjige --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 Plaćanje vrijednosti izgubljene knjiige --->
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF Plaćanje zakasnine --->
        if (6 == id && msg.sender == participants[11]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}