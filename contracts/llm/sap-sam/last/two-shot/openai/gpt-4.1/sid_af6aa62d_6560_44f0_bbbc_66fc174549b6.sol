// test openai/gpt-4.1 - two-shot at 2025-06-12T02:00:16.644Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-E7FCB659-4703-43A0-9214-15194F511A63 Envoie du CV et de la lettre de motivation --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-4278AACB-F004-481E-9317-77FBE5B74D93 Envoie de la reponse a la demande de candidature --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway sid-C3068222-0D2A-4F31-93E7-44ED5F2AFD0B
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // <---  sid-48FE47EA-3375-4623-89A0-CE8DA0A1AD4B  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          transitioned = true;
        }
        if (!transitioned) {
          // <--- default sid-3E6D41C5-AEA0-4E8C-AE99-46E1BEEE3144 --->
          _tokenState &= ~uint(4);
          // End Event: Refus de la candidature
          _tokenState |= 0;
          break;
        }
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-37595556-B917-4B18-AD74-2BCF527AAAB7 Proposition d une date d entretien --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-048D538C-43F7-469E-B89A-0CA584ABFC81 Reponse a la proposition de date --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway sid-F9244771-04FA-4EA4-939E-323F4985039B
      if (_tokenState & 32 == 32) {
        bool transitioned2 = false;
        if (conditions & 2 == 2) {
          // <---  sid-9EE9528B-7CB1-45DD-ADEE-FE65136ED892  --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          transitioned2 = true;
        }
        if (!transitioned2) {
          // <--- default sid-A755D741-CB0B-448F-9C5B-A383D6B7F724 --->
          _tokenState &= ~uint(32);
          _tokenState |= 8;
        }
        continue;
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-6D162641-ADA9-40EC-AF82-B924EF51268A Convocation des 6 experts --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-6092EA39-9FE2-45B1-80A3-8851B667F4AD Envoie du vote et de la deliberation --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-1E35BC4F-E014-45C5-9601-FC1C31FE11B6 Envoie de la decision finale --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-78ED290B-8A2A-4E31-A733-DD29E2AAFFA4 Transmission de la decision finale --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway sid-09191CDC-5C41-4A3E-8579-13DCFFF9CC5A
      if (_tokenState & 1024 == 1024) {
        bool transitioned3 = false;
        if (conditions & 4 == 4) {
          // <---  sid-FEDB5D66-788C-4AA6-A790-C1F7A717076C  --->
          _tokenState &= ~uint(1024);
          // End Event: Refus de la candidature
          _tokenState |= 0;
          break;
        }
        if (!transitioned3) {
          // <--- default sid-FBADA895-8167-4FBC-81E8-0F2E5D9B3C63 --->
          _tokenState &= ~uint(1024);
          // End Event: Refus de la candidature
          _tokenState |= 0;
          break;
        }
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}