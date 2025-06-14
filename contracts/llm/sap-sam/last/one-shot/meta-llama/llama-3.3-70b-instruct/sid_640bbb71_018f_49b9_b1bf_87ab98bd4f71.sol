// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:38:59.967Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_640bbb71_018f_49b9_b1bf_87ab98bd4f71 {
  uint public tokenState = 1;
  address[24] public participants;
  uint public conditions;

  constructor(address[24] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_4B3ECD74_1D9C_4430_A457_8B72E38B10FD Bestellknopf drücken --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_38A39E8F_5B1F_46CD_A7A3_7C71137383E6 Informiert über Bestellung --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_F1E75F36_A3A8_4A56_9C96_85F5CCD11D12 geht zum Tisch --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_E94EF6B4_AC04_46EA_834A_FD0AE23781C0 Bestellt --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_EB252737_D08A_481E_8CF5_B6222911541C gibt Bestellung ein --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_87491312_B858_48B4_ADB8_705EE96D1E69 Informiert --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_F24925AF_54C1_4F4A_970A_CF58C7FBEA39 bearbeitet Bestellung --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_DFCB693D_6872_4303_BAEA_59EF4B8B6B54 meldet fertige Bestellung --->
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_5B33B74D_A983_4FDC_93B8_9047159D1E43 Informiert --->
        if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_19608D35_5BBF_4BEA_8ECD_A92D2493303A Holt Bestellung ab --->
        if (10 == id && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_56AA5D29_29B5_470F_AF0F_DA7A9EFCFBFE Bringt Bestellung zum Tisch --->
        if (11 == id && msg.sender == participants[20]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_E280D42C_AC69_4910_8644_03126F28FEFD übergibt Bestellung --->
        if (12 == id && msg.sender == participants[22]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState = 0;
          break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
