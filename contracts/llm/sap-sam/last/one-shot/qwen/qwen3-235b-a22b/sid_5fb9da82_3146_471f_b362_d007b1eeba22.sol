// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:30:54.943Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_5fb9da82_3146_471f_b362_d007b1eeba22 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1: Termin ausmachen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_2: Termin und Ort verifizieren --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_3: Fotoauswahl ... --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_4: Fotos festlegen ... --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_5: Rechnung ausstellen --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_6: Fotos bezahlen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 96;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 96 == 96) {
        if (conditions & 1 == 1) {
          // <--- exclusive gateway condition --->
          _tokenState &= ~uint(96);
          _tokenState |= 128;
          continue; 
        } else {
          // <--- follow default sequence flow --->
          _tokenState &= ~uint(96);
          _tokenState |= 256;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_7: Fotos abholen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_8: Fotos geschickt bekommen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- join gateway --->
        // <--- auto transition to end --->
        _tokenState &= ~uint(512);
        break; // is end
      }
    }
    tokenState = _tokenState;
  }
}
