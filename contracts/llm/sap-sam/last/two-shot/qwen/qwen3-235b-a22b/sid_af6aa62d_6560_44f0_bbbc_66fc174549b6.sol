// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T16:08:57.440Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
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
        // ChoreographyTask: sid-E7FCB659-4703-43A0-9214-15194F511A63 Envoie du CV et de la lettre de motivation
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask: sid-4278AACB-F004-481E-9317-77FBE5B74D93 Envoie de la réponse à la demande de candidature
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ExclusiveGateway: sid-C3068222-0D2A-4F31-93E7-44ED5F2AFD0B
        if (conditions & 1 == 1) {
          // Follow conditional path
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // Follow default path to end event
          _tokenState &= ~uint(4);
          _tokenState |= 1024;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask: sid-37595556-B917-4B18-AD74-2BCF527AAAB7 Proposition d'une date d'entretien
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask: sid-048D538C-43F7-469E-B89A-0CA584ABFC81 Réponse à la proposition de date
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ExclusiveGateway: sid-F9244771-04FA-4EA4-939E-323F4985039B
        if (conditions & 2 == 2) {
          // Follow conditional path to convocation of experts
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          // Follow default path back to interview date proposal
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask: sid-6D162641-ADA9-40EC-AF82-B924EF51268A Convocation des 6 experts
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask: sid-6092EA39-9FE2-45B1-80A3-8851B667F4AD Envoie du vote et de la délibération
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // ChoreographyTask: sid-1E35BC4F-E014-45C5-9601-FC1C31FE11B6 Envoie de la décision finale
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // ChoreographyTask: sid-78ED290B-8A2A-4E31-A733-DD29E2AAFFA4 Transmission de la décision finale
        if (id == 8 && msg.sender == participants[14]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // ExclusiveGateway: sid-09191CDC-5C41-4A3E-8579-13DCFFF9CC5A
        if (conditions & 4 == 4) {
          // Follow conditional path to end event
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue;
        } else {
          // Follow default path to end event
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue;
        }
      }
      
      if (_tokenState & 2048 == 2048) {
        // End event: Refus de la candidature
        _tokenState &= ~uint(2048);
        break;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
