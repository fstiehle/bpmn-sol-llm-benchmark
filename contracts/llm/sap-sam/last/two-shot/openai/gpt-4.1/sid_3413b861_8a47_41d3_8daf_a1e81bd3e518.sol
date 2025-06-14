// test openai/gpt-4.1 - two-shot at 2025-06-12T00:18:47.370Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_3413b861_8a47_41d3_8daf_a1e81bd3e518 {
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
      // --- sid-0CB4AAC5-693A-4689-A62F-ED9E9AD3FC1E Slanje_opisa_problema ---
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // --- sid-1A819D31-39BF-4D46-BCA2-B179558E994C Dobijanje_detaljnog_opisa_problema ---
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // --- sid-95FC3A8B-EA99-429F-8CD6-660CB56644B7 Slanje_resenja ---
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      // --- sid-C978C6C9-48E1-49A2-A2FA-65F0F7BC5B41 [no_name] ---
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // --- sid-57C81B29-22B6-49FC-ACFA-7F9A22C75876 Slanje_resenja ---
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // --- sid-B8C46AE2-A3B0-4B1F-BE47-9899F5B33EAA Slanje_opisa_problena ---
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // --- sid-7D2DD5DA-0D4D-494E-8195-4923284FEB9F Slanje_resenja ---
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // --- Gateway sid-23D431AF-1D80-42F9-839E-B870F7ACDE9B ---
      if (_tokenState & 4 == 4) {
        bool traversed = false;
        // [sid-0FA83AEA-B628-4D67-8C90-56E48D3C93BC] da
        if (!traversed && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          traversed = true;
          continue;
        }
        // default: sid-6F6FFCB7-FB0C-42A4-A840-3AD4B67A59C7
        if (!traversed) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
      }
      // --- Gateway sid-FFB7BEA7-8E19-4FD3-A880-B7BBF1AEBD24 ---
      if (_tokenState & 64 == 64) {
        bool traversed = false;
        // [sid-8AFF1357-B4E0-40F8-B957-3A6F6323CB49] da
        if (!traversed && (conditions & 2 == 2)) {
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          traversed = true;
          continue;
        }
        // default: sid-A296CDA4-5AAC-4E6B-B273-15A37C92C007
        if (!traversed) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}