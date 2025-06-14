// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:06:57.880Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_62c28843_b184_41e1_a25f_91408775a5b3 {
  uint public tokenState = 1;
  address[30] public participants;
  uint public conditions;

  constructor(address[30] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_48DA2ADE-5B7F-4D68-A3B3-7271C36DD57E An Warteschlange 1 anstellen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_D82F561F-771D-43BC-B4FB-D165CF04BB6F An Warteschlange 3 anstellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_5397633C-B91B-41F6-88CB-F6A756F949F0 An Warteschlange 2 anstellen --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_F0099824-993E-449E-AFF1-0F315FFD9BCC Teller bereitstellen --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_278CD03B-5B0D-4A61-9156-3D00C6D77487 Teller befüllen --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_CFC48BBD-0CA5-4A8A-8981-4818C1BD4E63 Teller auf die Theke stellen --->
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_AA331F9C-61AD-43DF-B9FA-336EBE95FB64 Teller von der Theke nehmen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_720465BA-FA50-4AA1-B159-6170FAE0CD5C Zur Kassen begeben --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_85FB1251-02A7-451C-ABF2-A9A4656E44A4 Beitrag ermitteln --->
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_C888D461-1BB6-440F-98C5-D69DC47FFBDB Forderungen bezahlen --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue; 
        } else if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_841B139E-9C36-4A4A-8765-6617A2F7A244 Einzahlungsbetrag einkassieren --->
        if (12 == id && msg.sender == participants[23]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095 Einzahlungsbetrag einkassieren --->
        if (13 == id && msg.sender == participants[25]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask_97DF2393-0947-4F00-B69A-FF07EAAD6932 Wechselgeld ausgeben --->
        if (11 == id && msg.sender == participants[21]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- ChoreographyTask_9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095 Einzahlungsbetrag einkassieren --->
        if (13 == id && msg.sender == participants[25]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- ChoreographyTask_25B3FD8F-B874-4A33-B9EA-48CC7F623957 Essensplatz suchen --->
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- ChoreographyTask_0305710C-7E67-4291-9EF5-833B510DA300 Essen verzehren --->
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(65536);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
