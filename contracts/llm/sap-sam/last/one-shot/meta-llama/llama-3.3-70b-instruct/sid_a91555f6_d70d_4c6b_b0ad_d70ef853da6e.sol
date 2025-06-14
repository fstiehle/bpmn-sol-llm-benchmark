// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:10:40.915Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
  uint public tokenState = 1;
  address[36] public participants;
  uint public conditions;
  mapping (uint => uint) public taskIDtoIndex;
  constructor(address[36] memory _participants) {
    participants = _participants;
    taskIDtoIndex[1] = 0;
    taskIDtoIndex[2] = 1;
    taskIDtoIndex[3] = 2;
    taskIDtoIndex[4] = 3;
    taskIDtoIndex[5] = 4;
    taskIDtoIndex[6] = 5;
    taskIDtoIndex[7] = 6;
    taskIDtoIndex[8] = 7;
    taskIDtoIndex[9] = 8;
    taskIDtoIndex[10] = 9;
    taskIDtoIndex[11] = 10;
    taskIDtoIndex[12] = 11;
    taskIDtoIndex[13] = 12;
    taskIDtoIndex[14] = 13;
    taskIDtoIndex[15] = 14;
    taskIDtoIndex[16] = 15;
    taskIDtoIndex[17] = 16;
    taskIDtoIndex[18] = 17;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_C239469D Order goods --->
        if (id == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_C04696F9 Order confirmation --->
        if (id == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_DCF5CEC1 Order cancellation --->
        if (id == 3 && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_24D1978A Research initiation --->
        if (id == 4 && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_B7D3EC60 Manufacturing process initiation --->
        if (id == 5 && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_48A887EF Order and capacity check --->
        if (id == 6 && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_DFFAB4E3 Legal aspects check --->
        if (id == 7 && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_98A8C0FD Quality control --->
        if (id == 8 && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_5334FE47 Cause analysis --->
        if (id == 9 && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask_BC5EFE3A Sample delivery --->
        if (id == 10 && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- ChoreographyTask_02ACAA68 Quality control --->
        if (id == 11 && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- ChoreographyTask_7B533088 Quantity check --->
        if (id == 12 && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- ChoreographyTask_BB48F939 Complaint submission --->
        if (id == 13 && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- ChoreographyTask_CA197233 Order cancellation --->
        if (id == 14 && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- ChoreographyTask_4F2F3D5F Quality confirmation --->
        if (id == 15 && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- ChoreographyTask_CEC360BB Biopharmaceutical delivery --->
        if (id == 16 && msg.sender == participants[30]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- ChoreographyTask_41418591 Receipt confirmation --->
        if (id == 17 && msg.sender == participants[32]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(65536);
        _tokenState |= 131072;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <--- ChoreographyTask_70F253A9 Invoice creation --->
        if (id == 18 && msg.sender == participants[34]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(131072);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 8 == 8) {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        if (conditions & 16 == 16) {
          // <---  auto transition  --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        if (conditions & 32 == 32) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2048);
          _tokenState |= 4096;
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
