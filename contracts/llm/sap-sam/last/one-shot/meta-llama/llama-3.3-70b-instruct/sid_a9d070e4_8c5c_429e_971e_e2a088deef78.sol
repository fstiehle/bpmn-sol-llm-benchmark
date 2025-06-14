// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:11:11.851Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
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
        // <--- ChoreographyTask sid-AF0FE7CF-C1F5-4EA9-BA11-5A4DFEC56135 Anfrage Pauschalreise --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2 | 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C Angebotsanfrage --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-56679A2F-AC09-4588-A72E-9FF2B290B59B Angebotsanfrage --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-06110881-69C4-4256-9D83-C6D2F37A610B Rücksendung von Angebot --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-1F75B0F5-AF76-41BC-AF30-AD931FD06C0E Rücksendung von Angebot --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-84CBA74D-7DE7-4B00-9BBF-B9A0CA9709C6 Übermittelt Angebote und Rechnung --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 256 | 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-0AA04BAA-5E44-4F09-A382-F6FF6FF8C87F Buchungsanfrage --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask sid-9D35829C-FE97-4F13-BBD4-A39A59B7A087 Buchungsanfrage --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask sid-87DFE548-5C64-4DE5-BCE2-C4136BA82708 Buchungsbestätigung und Rechnung --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ChoreographyTask sid-12EAEC8B-6F08-4829-8C6D-7FBEE84059C5 Buchungsbestätigung&amp;#10;und Rechnung --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <---  auto transition  --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        continue; 
      }
      if (_tokenState & 2048 == 2048) {
        // <---  auto transition  --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        continue; 
      }
      if (_tokenState & 4096 == 4096) {
        // <---  auto transition  --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 8192 == 8192) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
