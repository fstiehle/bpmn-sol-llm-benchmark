// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:59:50.904Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_7e6c8e81_8977_4cbd_818d_dec74bfc816b {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-30A5461D-7588-4ED8-ADC2-E4128343C522 Receive documents --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
        if (1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-3D723944-9B34-40D6-A39C-EAB0CA933734 Application contains errors --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-5A3ECBEA-8342-402B-8957-B983A5CF5CB6 Reject application --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-6DBA4DBC-8A77-4C66-93CB-4834A500751F Application resubmissions --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-CD6AB0BE-9B3F-434A-8700-6D824685A462 Applications verified --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        if (1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          continue; 
        }
        if (conditions & 4 == 4) {
          // <---  auto transition  --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-87287EEC-75F1-4AC8-AE7E-9C391703EE55 Receive final ranking list --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-BB62FAA9-D601-4BF1-A772-3A4380DD1A5B Notify Applicants --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue; 
        }
        if (1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-02B3BAAB-F46E-4E03-8DEB-ED35AD89343F Accept offer --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-7A241CBE-2575-4DCA-95BC-28BAB9EEFF81 Reject offer --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <---  auto transition  --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        continue; 
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-4B89B8DF-8AF8-4325-81E7-8C70BB23A15D Confirmation of applicants --->
        if (10 == id && msg.sender == participants[19]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}