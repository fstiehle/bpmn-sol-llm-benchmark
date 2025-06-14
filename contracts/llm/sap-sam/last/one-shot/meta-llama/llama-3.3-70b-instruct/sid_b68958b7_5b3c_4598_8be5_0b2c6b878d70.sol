// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:14:23.013Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
  uint public tokenState = 1;
  address[18] public participants;
  uint public conditions;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_6E7BC75D_207E_4D80_9AE8_CD7A71E4F01A Anfrage auf Reparatur stellen / Produkt an reBuy senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_EDC95EBB_1DB2_45EB_B9F1_DE20B008C455 Prüfung, ob es sich um einen Garantiefall handelt --->
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
        // <--- ChoreographyTask_492CD1C4_81EB_4B4B_B3C1_7BF00708AE5D Support nimmt sich dem defekten Gerät an / Garantiefall bewilligt --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_25AA23A0_E09A_4708_8B06_8184876E4159 Kunde erhält Gerät zurück erhält eine Absage --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_2D44CA56_2A4B_4959_B2A0_7326289F57BD Anfrage an Reparaturdienst; Prüfung, ob Gerät reparierbar ist --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_D8CFBA70_4C1A_4408_94A2_D5DB6A9AEC25 Gerät reparieren lassen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_C0F110DA_170A_4626_816B_1BFAC6FD1E50 Ablehnung; Gerät ist irreparabel defekt --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_9A2B984C_85DA_4FDA_A60A_8CDAA4B4F902 Reparatur erfolgreich; Produkt kann zurück gesendet werden --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_350EC8A3_700F_46EC_AC45_0F67663518EC Kunde erhält Kaufbetrag zurückerstattet --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
