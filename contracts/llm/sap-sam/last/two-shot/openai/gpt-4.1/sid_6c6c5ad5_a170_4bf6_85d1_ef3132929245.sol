// test openai/gpt-4.1 - two-shot at 2025-06-12T01:12:09.932Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6c6c5ad5_a170_4bf6_85d1_ef3132929245 {
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
      // sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1 Saopstava problem
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1 here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612 Trazi detaljniji opis
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612 here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-E38463B9-D82B-4189-851B-1B9A3309F090 Saopstava resenje
      if (_tokenState & 256 == 256) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-E38463B9-D82B-4189-851B-1B9A3309F090 here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break;
        }
      }
      // sid-1BDA005F-A28B-4B00-A678-19F7E437856F Trazi pomoc
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-1BDA005F-A28B-4B00-A678-19F7E437856F here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-8804897F-A178-4B50-B16F-90AD4B890E31 Saopstava resenje problema
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-8804897F-A178-4B50-B16F-90AD4B890E31 here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-3DC05355-F0EE-4522-9151-7257C96DC99E Trazi pomoc
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for sid-3DC05355-F0EE-4522-9151-7257C96DC99E here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340 Saopstava problem
      if (_tokenState & 64 == 64) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340 here --->
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // ExclusiveGateway sid-5CBD0AD9-DB13-466E-A702-7F9AAF3355E4
      if (_tokenState & 4 == 4) {
        bool taken = false;
        if (!taken && (conditions & 1 == 1)) {
          // condition on sid-053ED88C-2F1D-4778-8704-E03F2FABB2C2
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          taken = true;
          continue;
        }
        if (!taken) {
          // default sid-A7928720-8937-4DC3-B432-E6DC0D84204D
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          continue;
        }
      }
      // ExclusiveGateway sid-800358D3-F1F2-4A3A-A1FC-45ECA8CD8EB5
      if (_tokenState & 32 == 32) {
        bool taken = false;
        if (!taken && (conditions & 2 == 2)) {
          // condition on sid-034A683A-7398-45E8-9BFB-1B7E58410B08
          _tokenState &= ~uint(32);
          _tokenState |= 2048;
          taken = true;
          continue;
        }
        if (!taken) {
          // default sid-9B838DEB-AF90-4D33-9A04-6BB107DCDBFF
          _tokenState &= ~uint(32);
          _tokenState |= 4096;
          continue;
        }
      }
      // ExclusiveGateway sid-4F849501-E9FA-4B73-9703-F9A811BFBCB7 (converging)
      if (_tokenState & 384 == 384) {
        // both incoming F17AFCCB-596C-4DB6-A1BA-B7918BC88320 (512) and A7928720-8937-4DC3-B432-E6DC0D84204D (128)
        _tokenState &= ~uint(384);
        _tokenState |= 256;
        continue;
      }
      // ExclusiveGateway sid-44FB41C4-E42B-4D13-B0FC-F0F538F920B0 (converging)
      if (_tokenState & 6144 == 6144) {
        // both incoming D9FFEA9E-B513-4AF1-8DB7-AD8A999BBCE1 (4096) and 9B838DEB-AF90-4D33-9A04-6BB107DCDBFF (2048)
        _tokenState &= ~uint(6144);
        _tokenState |= 512;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
