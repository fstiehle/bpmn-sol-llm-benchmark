// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:19:15.321Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_3406c2ea_744f_4829_b96a_36cd98fa7c13 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;
  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_7A6D2EC5_97F9_41C7_AA12_8533B2A978CE Anfrage 
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_2B34D3A5_E5DC_4813_B56A_69BA0DDDD357 Angebot 
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_32373B24_9806_40FC_A1E8_E263E51D1057 Änderung 
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 12;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_4A1D27ED_C77F_4B5D_99A8_DB09C3577A0E Auftrag 
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_033B60DD_1C6E_4D1B_9574_8CD685DEEC42 Absage 
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_208576A6_E551_4B40_8BFB_180FBB9CA81F Anfrage 
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_E39CFE77_E760_4E6D_B257_03502B5BD04F Verfügbarkeit 
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_678F1659_35AA_4CC5_AB06_B1C0AD9F16DD Verfügbarkeit 
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_DFD49704_139E_44DF_8E10_E71080163B76 Auftrag 
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_5DE29D81_E263_4AF0_8F8B_D6F611C543F5 Grafik 
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_5C840AD1_6813_4439_90B5_2F1C831321E4 Anzeige 
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 12 == 12) {
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(12);
          _tokenState |= 8;
          continue; 
        }
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(12);
          _tokenState |= 16;
          continue; 
        }
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(12);
          _tokenState |= 4;
          continue; 
        }
      }
      if (_tokenState & 192 == 192) {
        // <---  auto transition  --->
        _tokenState &= ~uint(192);
        _tokenState |= 32;
        continue; 
      }
      if (_tokenState & 768 == 768) {
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(768);
          _tokenState |= 64;
          continue; 
        }
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(768);
          _tokenState |= 128;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
