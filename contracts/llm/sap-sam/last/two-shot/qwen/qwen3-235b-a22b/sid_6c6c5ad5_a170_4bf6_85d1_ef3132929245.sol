// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:41:57.108Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_6c6c5ad5_a170_4bf6_85d1_ef3132929245 {
  uint public tokenState = 1; // Start with the first bit set (start event)
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
      // Task 1: sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1 (Saopstava problem)
      if ((_tokenState & 1) == 1 && id == 1 && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
      }
      
      // Task 2: sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612 (Trazi detaljniji opis)
      if ((_tokenState & 2) == 2 && id == 2 && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
      }
      
      // Exclusive Gateway 1: sid-5CBD0AD9-DB13-466E-A702-7F9AAF3355E4
      if ((_tokenState & 4) == 4) {
        _tokenState &= ~uint(4);
        
        // Check condition for sid-053ED88C-2F1D-4778-8704-E03F2FABB2C2
        if ((conditions & 1) == 1) {
          _tokenState |= 8; // Conditional path to Saopstava resenje
        } else {
          _tokenState |= 16; // Default path to Trazi pomoc
        }
        continue;
      }
      
      // Task 4: sid-1BDA005F-A28B-4B00-A678-19F7E437856F (Trazi pomoc)
      if ((_tokenState & 16) == 16 && id == 4 && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
      }
      
      // Exclusive Gateway 2: sid-800358D3-F1F2-4A3A-A1FC-45ECA8CD8EB5
      if ((_tokenState & 32) == 32) {
        _tokenState &= ~uint(32);
        
        // Check condition for sid-034A683A-7398-45E8-9BFB-1B7E58410B08
        if ((conditions & 2) == 2) {
          _tokenState |= 64; // Conditional path to Saopstava resenje problema
        } else {
          _tokenState |= 128; // Default path to Trazi pomoc
        }
        continue;
      }
      
      // Task 6: sid-3DC05355-F0EE-4522-9151-7257C96DC99E (Trazi pomoc)
      if ((_tokenState & 128) == 128 && id == 6 && msg.sender == participants[10]) {
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
      }
      
      // Task 7: sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340 (Saopstava problem)
      if ((_tokenState & 256) == 256 && id == 7 && msg.sender == participants[12]) {
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
      }
      
      // Exclusive Gateway 3: sid-44FB41C4-E42B-4D13-B0FC-F0F538F920B0
      if ((_tokenState & 512) == 512) {
        _tokenState &= ~uint(512);
        _tokenState |= 1024; // Direct path to converging gateway
        continue;
      }
      
      // Converging Gateway: sid-4F849501-E9FA-4B73-9703-F9A811BFBCB7
      if ((_tokenState & 1024) == 1024) {
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        continue;
      }
      
      // Task 3: sid-E38463B9-D82B-4189-851B-1B9A3309F090 (Saopstava resenje)
      if ((_tokenState & 8) == 8 && id == 3 && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 4096;
        id = 0;
        continue;
      }
      
      // Task 5 (after convergence): sid-8804897F-A178-4B50-B16F-90AD4B890E31 (Saopstava resenje problema)
      if ((_tokenState & 2048) == 2048 && id == 5 && msg.sender == participants[8]) {
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue;
      }
      
      // End event: sid-F83CD6F4-0EA3-4D86-BB1E-4254D81532D7
      if ((_tokenState & 4096) == 4096) {
        _tokenState &= ~uint(4096);
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
