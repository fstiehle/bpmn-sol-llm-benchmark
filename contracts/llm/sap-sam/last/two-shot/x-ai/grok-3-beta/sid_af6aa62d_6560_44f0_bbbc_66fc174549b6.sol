// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:51:42.614Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-E7FCB659-4703-43A0-9214-15194F511A63 Envoie du CV et de la lettre de motivation --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-4278AACB-F004-481E-9317-77FBE5B74D93 Envoie de la reponse a la demande de candidature --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-37595556-B917-4B18-AD74-2BCF527AAAB7 Proposition dune date dentretien --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-048D538C-43F7-469E-B89A-0CA584ABFC81 Reponse a la proposition de date --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-6D162641-ADA9-40EC-AF82-B924EF51268A Convocation des 6 experts --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-6092EA39-9FE2-45B1-80A3-8851B667F4AD Envoie du vote et de la deliberation --->
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-1E35BC4F-E014-45C5-9601-FC1C31FE11B6 Envoie de la decision finale --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-78ED290B-8A2A-4E31-A733-DD29E2AAFFA4 Transmission de la decision finale --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-C3068222-0D2A-4F31-93E7-44ED5F2AFD0B Exclusive Gateway --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-F9244771-04FA-4EA4-939E-323F4985039B Exclusive Gateway --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          _tokenState &= ~uint(32);
          _tokenState |= 8; // loop back to propose date
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-09191CDC-5C41-4A3E-8579-13DCFFF9CC5A Exclusive Gateway --->
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        } else {
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}