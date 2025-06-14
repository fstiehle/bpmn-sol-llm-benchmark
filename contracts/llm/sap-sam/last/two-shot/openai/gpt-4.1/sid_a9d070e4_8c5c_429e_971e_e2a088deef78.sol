// test openai/gpt-4.1 - two-shot at 2025-06-12T01:58:37.059Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
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
      // sid-AF0FE7CF-C1F5-4EA9-BA11-5A4DFEC56135 Anfrage Pauschalreise
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-56679A2F-AC09-4588-A72E-9FF2B290B59B Angebotsanfrage
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C Angebotsanfrage
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-1F75B0F5-AF76-41BC-AF30-AD931FD06C0E Rücksendung von Angebot
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // sid-06110881-69C4-4256-9D83-C6D2F37A610B Rücksendung von Angebot
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-84CBA74D-7DE7-4B00-9BBF-B9A0CA9709C6 Uebermittelt Angebote und Rechnung
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid-0AA04BAA-5E44-4F09-A382-F6FF6FF8C87F Buchungsanfrage
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // sid-9D35829C-FE97-4F13-BBD4-A39A59B7A087 Buchungsanfrage
      if (_tokenState & 1024 == 1024) {
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // sid-12EAEC8B-6F08-4829-8C6D-7FBEE84059C5 Buchungsbestaetigung und Rechnung
      if (_tokenState & 4096 == 4096) {
        if (10 == id && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4096);
          _tokenState |= 0;
          break;
        }
      }
      // sid-87DFE548-5C64-4DE5-BCE2-C4136BA82708 Buchungsbestaetigung und Rechnung
      if (_tokenState & 2048 == 2048) {
        if (9 == id && msg.sender == participants[16]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break;
        }
      }
      // ParallelGateway: sid-ADEE584F-2A54-4B9B-A3C7-37727002A798 [split]
      if (_tokenState & 2 == 2) {
        // split to two tasks
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // ParallelGateway: sid-C4048646-CFB3-429D-A337-2A144C2F56AE [join]
      if (_tokenState & 64 == 64) {
        if ((_tokenState & 192) == 192) {
          // when both 64 and 128 are active (from Rücksendung von Angebot/Hotel and Rücksendung von Angebot/Fluggesellschaft)
          _tokenState &= ~uint(192); // remove 64+128
          _tokenState |= 256;
          continue;
        }
        if ((_tokenState & 64) == 64 && (_tokenState & 128) != 128) {
          // wait for both
          break;
        }
        if ((_tokenState & 128) == 128 && (_tokenState & 64) != 64) {
          // wait for both
          break;
        }
      }
      // ParallelGateway: sid-4D7F7F65-2E2B-4812-AD70-399980C84C74 [split]
      if (_tokenState & 256 == 256) {
        // split to two tasks
        _tokenState &= ~uint(256);
        _tokenState |= 1536;
        continue;
      }
      // ParallelGateway: sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578 [join]
      if (_tokenState & 8192 == 8192) {
        if ((_tokenState & 6144) == 6144) {
          // when both 4096 and 2048 are active (from Buchungsbestaetigung und Rechnung Flug/Hotel)
          _tokenState &= ~uint(6144);
          _tokenState |= 16384;
          continue;
        }
        if ((_tokenState & 4096) == 4096 && (_tokenState & 2048) != 2048) {
          // wait for both
          break;
        }
        if ((_tokenState & 2048) == 2048 && (_tokenState & 4096) != 4096) {
          // wait for both
          break;
        }
      }
      // sid-CE765AAC-6DD6-4DF8-8A04-ADD5AD5E6558 -> End
      if (_tokenState & 16384 == 16384) {
        _tokenState &= ~uint(16384);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
