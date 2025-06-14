// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:36:31.571Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_5fb9da82_3146_471f_b362_d007b1eeba22 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  mapping (uint => uint) public taskIDToBit;

  constructor(address[16] memory _participants) {
    participants = _participants;
    taskIDToBit[1] = 1;
    taskIDToBit[2] = 2;
    taskIDToBit[3] = 4;
    taskIDToBit[4] = 8;
    taskIDToBit[5] = 16;
    taskIDToBit[6] = 32;
    taskIDToBit[7] = 64;
    taskIDToBit[8] = 128;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_7022C348_D09E_4F95_B819_26BB3F9BDA77 Termin ausmachen --->
        if (taskID == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_B7F015A5_D636_416D_9257_A87971F74589 Termin und Ort verifizieren --->
        if (taskID == 2 && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_73A19B14_D898_44EF_928B_79832C150CC9 Fotoauswahl (digital, gedruckt + Anzahl) und Sonderwünsche --->
        if (taskID == 3 && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_263E55DE_655C_4354_9267_B923AB819ADA Fotos festlegen und Sonderwünsche --->
        if (taskID == 4 && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_7FD2DF6B_AA9B_4DB9_8A4A_BB8B78D10B0E Rechnung austellen --->
        if (taskID == 5 && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_2BA251C1_F838_4861_B938_22F4BE0320B2 Fotos bezahlen --->
        if (taskID == 6 && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_DB65A7A4_7642_48A2_8798_44DC7F968623 Fotos abholen --->
        if (taskID == 7 && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 1024;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_D0AC8191_ECED_4E83_ACF3_28B83E1C53E2 Fotos geschickt bekommen --->
        if (taskID == 8 && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          taskID = 0;
          continue; 
        }
      }
      if (_tokenState & 1024 == 1024 || _tokenState & 2048 == 2048) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1024);
        _tokenState &= ~uint(2048);
        _tokenState = 0;
        break; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
