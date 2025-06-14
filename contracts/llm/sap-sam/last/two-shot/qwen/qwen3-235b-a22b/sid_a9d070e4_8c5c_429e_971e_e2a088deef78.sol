// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T15:53:33.866Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
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
        // <--- sid-AF0FE7CF-C1F5-4EA9-BA11-5A4DFEC56135 Anfrage Pauschalreise --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2 + 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C Angebotsanfrage --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-56679A2F-AC09-4588-A72E-9FF2B290B59B Angebotsanfrage --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-06110881-69C4-4256-9D83-C6D2F37A610B Ruecksendung von Angebot --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-1F75B0F5-AF76-41BC-AF30-AD931FD06C0E Ruecksendung von Angebot --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(16);
        id = 0;
        continue; 
        }
      }
      if ((_tokenState & (8 + 16)) == 0) {
        // <--- sid-C4048646-CFB3-429D-A337-2A144C2F56AE auto transition --->
        _tokenState &= ~uint(0);
        _tokenState |= 32;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-84CBA74D-7DE7-4B00-9BBF-B9A0CA9709C6 Uebermittelt Angebote und Rechnung --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64 + 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-0AA04BAA-5E44-4F09-A382-F6FF6FF8C87F Buchungsanfrage --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-9D35829C-FE97-4F13-BBD4-A39A59B7A087 Buchungsanfrage --->
        if (8 == id && msg.sender == participants[14]) {
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-87DFE548-5C64-4DE5-BCE2-C4136BA82708 Buchungsbestaetigung und Rechnung --->
        if (9 == id && msg.sender == participants[16]) {
        _tokenState &= ~uint(256);
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-12EAEC8B-6F08-4829-8C6D-7FBEE84059C5 Buchungsbestaetigung und Rechnung --->
        if (10 == id && msg.sender == participants[18]) {
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      if ((_tokenState & (256 + 512)) == (256 + 512)) {
        // <--- sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578 auto transition --->
        _tokenState &= ~uint(256 + 512);
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
