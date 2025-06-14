// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:47:08.666Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_7502f5f2_4250_4d09_a194_2d7312b7bc1b {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_sid-DBACF7D5-D007-4F25-A4E9-00E3DF72A2C5 slanje problema --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid-960F19B5-909B-41FC-BC7A-0BCA2E01BEA5 dobijanje detaljnog opisa --->
        if (2 == taskID && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- Gateway_sid-5657E6B2-384A-4BAA-B5B5-C60AD28AB318 operater zna da resi --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_sid-EB936A34-57FB-492F-914F-0C38A32ACCBA stanje resenja --->
        if (3 == taskID && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_sid-AE31756A-4ACA-419E-953F-348EF5858010 trazenje resenja --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 1 == 1) {
          // <--- Gateway_sid-0F3BCA2B-2E90-46F9-B1B0-548849160943 podrska I nivoa zna da resi --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_sid-F3EBD7C8-1788-48BB-B375-672376D51FE8 slanje resenja --->
        if (5 == taskID && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_sid-351B7991-7029-4335-B071-8CC6646F7179 trazenje resenja --->
        if (6 == taskID && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 1024;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_sid-360D1C00-730A-4CDE-BCEA-56A27C1BEBD8 slanje ressejna --->
        if (7 == taskID && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 2048;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <---  auto transition  --->
        _tokenState &= ~uint(512);
        _tokenState |= 8;
        continue;
      }
      if (_tokenState & 1024 == 1024) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1024);
        _tokenState |= 64;
        continue;
      }
      if (_tokenState & 2048 == 2048) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2048);
        _tokenState |= 512;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
