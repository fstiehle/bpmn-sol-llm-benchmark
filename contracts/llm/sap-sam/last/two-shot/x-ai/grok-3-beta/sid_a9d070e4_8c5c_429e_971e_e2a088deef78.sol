// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:50:44.977Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_two_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-AF0FE7CF-C1F5-4EA9-BA11-5A4DFEC56135 Anfrage Pauschalreise --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C Angebotsanfrage --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-56679A2F-AC09-4588-A72E-9FF2B290B59B Angebotsanfrage --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-06110881-69C4-4256-9D83-C6D2F37A610B Ruecksendung von Angebot --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-1F75B0F5-AF76-41BC-AF30-AD931FD06C0E Ruecksendung von Angebot --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-84CBA74D-7DE7-4B00-9BBF-B9A0CA9709C6 Uebermittelt Angebote und Rechnung --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-0AA04BAA-5E44-4F09-A382-F6FF6FF8C87F Buchungsanfrage --->
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-9D35829C-FE97-4F13-BBD4-A39A59B7A087 Buchungsanfrage --->
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-87DFE548-5C64-4DE5-BCE2-C4136BA82708 Buchungsbestatigung und Rechnung --->
        if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-12EAEC8B-6F08-4829-8C6D-7FBEE84059C5 Buchungsbestatigung und Rechnung --->
        if (10 == id && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-ADEE584F-2A54-4B9B-A3C7-37727002A798 Parallel Gateway Diverging --->
        // Auto transition for parallel split
        _tokenState &= ~uint(2);
        _tokenState |= 20; // Activate both outgoing paths (4 for task 2, 16 for task 3)
        continue;
      }
      if (_tokenState & 192 == 192) {
        // <--- sid-C4048646-CFB3-429D-A337-2A144C2F56AE Parallel Gateway Converging --->
        // Auto transition for parallel join (both 64 and 128 must be active)
        _tokenState &= ~uint(192);
        _tokenState |= 256; // Activate next task (task 6)
        continue;
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-4D7F7F65-2E2B-4812-AD70-399980C84C74 Parallel Gateway Diverging --->
        // Auto transition for parallel split
        _tokenState &= ~uint(512);
        _tokenState |= 5120; // Activate both outgoing paths (1024 for task 7, 4096 for task 8)
        continue;
      }
      if (_tokenState & 49152 == 49152) {
        // <--- sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578 Parallel Gateway Converging --->
        // Auto transition for parallel join (both 16384 and 32768 must be active)
        _tokenState &= ~uint(49152);
        _tokenState |= 0; // Process ends
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}