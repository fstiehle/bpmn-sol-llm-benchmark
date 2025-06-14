// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:12:07.098Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_3e540bea_9ea2_4ddb_8cd0_a0b78c942efa {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask Klijent ima problem (ID: sid-36C0040E-7810-4DE4-BB7B-C312FB7C51F0)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask Detaljnije opisivanje problema (ID: sid-663EA2D1-A326-4D98-A4DE-2D130817DE4D)
        if (id == 2 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ExclusiveGateway sid-CB3A6E8D-2ED0-45DB-AB9A-F2D0E9927521
        if (conditions & 1 == 1) {
          // Follow "da" path directly to the final gateway
          _tokenState &= ~uint(4);
          _tokenState |= 256;
          continue;
        } else {
          // Follow default path - to sid-BD677F30-8130-47F2-8E95-1D4769FB1F47
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask Pitanje podrske prvog nivoa (ID: sid-BD677F30-8130-47F2-8E95-1D4769FB1F47)
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ExclusiveGateway sid-C45A5040-1C56-4BFE-8A80-708F6D3EC2A3
        if (conditions & 2 == 2) {
          // Follow "conditions & 2 == 2" path to the final gateway
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        } else {
          // Follow default path - to sid-CCF9A421-42C3-43D0-A441-374253CCCA89
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask Pitanje podrske drugog nivoa (ID: sid-CCF9A421-42C3-43D0-A441-374253CCCA89)
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask Objasnjavanje resenja podrsci prvog nivoa (ID: sid-2173A2F1-5CB3-47EE-8C89-BFCF203F248A)
        if (id == 7 && msg.sender == participants[13]) {
          _tokenState &= ~uint(128);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ExclusiveGateway sid-006249D0-5879-424A-B9A4-B9F0A079E4E7
        // This is a merge gateway, no condition needed
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        continue;
      }
      
      if (_tokenState & 256 == 256) {
        // ExclusiveGateway sid-B8FF6893-4145-438B-8A05-E5CD223E62FE
        // This is a merge gateway, no condition needed
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue;
      }
      
      if (_tokenState & 512 == 512) {
        // ChoreographyTask Objasnjavanje resera operateru (ID: sid-415D7F49-1116-4014-9313-6F5CF696EF08)
        // This task seems to be unreachable in the model, but according to the mapping we need it
        if (id == 5 && msg.sender == participants[9]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // ChoreographyTask Objasnjavanje resenja (ID: sid-EBC1C952-4F4E-4F3B-A435-993EC8C7A873)
        if (id == 3 && msg.sender == participants[5]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 0; // Process complete
          break; // Is end
        }
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
