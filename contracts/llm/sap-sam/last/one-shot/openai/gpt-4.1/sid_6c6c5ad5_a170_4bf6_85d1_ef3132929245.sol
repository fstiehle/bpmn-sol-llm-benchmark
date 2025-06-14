// test openai/gpt-4.1 - one-shot at 2025-06-11T23:47:20.693Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_6c6c5ad5_a170_4bf6_85d1_ef3132929245 {
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
    while(_tokenState != 0) {
      // sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1: Saopstava problem (Klijent initiates)
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1 --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612: Trazi detaljniji opis (Operater initiates)
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- custom code for task sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-5CBD0AD9-DB13-466E-A702-7F9AAF3355E4
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // Conditional: conditions & 1 == 1 -> sid-1BDA005F-A28B-4B00-A678-19F7E437856F (bit 8)
        if ((conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          transitioned = true;
        }
        // Default: sid-E38463B9-D82B-4189-851B-1B9A3309F090 (bit 16)
        if (!transitioned) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
        }
        continue;
      }
      // sid-1BDA005F-A28B-4B00-A678-19F7E437856F: Trazi pomoc (Operater initiates)
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for task sid-1BDA005F-A28B-4B00-A678-19F7E437856F --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-800358D3-F1F2-4A3A-A1FC-45ECA8CD8EB5
      if (_tokenState & 32 == 32) {
        bool transitioned = false;
        // Conditional: conditions & 2 == 2 -> sid-3DC05355-F0EE-4522-9151-7257C96DC99E (bit 128)
        if ((conditions & 2 == 2)) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          transitioned = true;
        }
        // Default: sid-8804897F-A178-4B50-B16F-90AD4B890E31 (bit 64)
        if (!transitioned) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
      }
      // sid-E38463B9-D82B-4189-851B-1B9A3309F090: Saopstava resenje (Operater initiates)
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for task sid-E38463B9-D82B-4189-851B-1B9A3309F090 --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // End event
        }
      }
      // sid-8804897F-A178-4B50-B16F-90AD4B890E31: Saopstava resenje problema (Podrska I nivoa initiates)
      if (_tokenState & 64 == 64) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for task sid-8804897F-A178-4B50-B16F-90AD4B890E31 --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid-3DC05355-F0EE-4522-9151-7257C96DC99E: Trazi pomoc (Podrska I nivoa initiates)
      if (_tokenState & 128 == 128) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for task sid-3DC05355-F0EE-4522-9151-7257C96DC99E --->
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340: Saopstava problem (Podrska II nivoa initiates)
      if (_tokenState & 512 == 512) {
        if (id == 7 && msg.sender == participants[12]) {
          // <--- custom code for task sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340 --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-4F849501-E9FA-4B73-9703-F9A811BFBCB7 (converging, just merge)
      if (_tokenState & 272 == 272) { // bits 16|256 (sid-E38463B9... or sid-8804897F...)
        _tokenState &= ~uint(272);
        _tokenState |= 16;
        continue;
      }
      // ExclusiveGateway sid-44FB41C4-E42B-4D13-B0FC-F0F538F920B0 (converging, just merge)
      if (_tokenState & 1536 == 1536) { // bits 1024|512 (sid-906F5EDC... or sid-3DC053...)
        _tokenState &= ~uint(1536);
        _tokenState |= 64;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
