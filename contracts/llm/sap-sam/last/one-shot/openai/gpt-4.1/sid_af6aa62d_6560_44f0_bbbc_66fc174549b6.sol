// test openai/gpt-4.1 - one-shot at 2025-06-12T00:05:44.131Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
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
      // --- sid-E7FCB659-4703-43A0-9214-15194F511A63: Envoie du CV et de la lettre de motivation ---
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for task sid-E7FCB659-4703-43A0-9214-15194F511A63 here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // --- sid-4278AACB-F004-481E-9317-77FBE5B74D93: Envoie de la réponse à la demande de candidature ---
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code for task sid-4278AACB-F004-481E-9317-77FBE5B74D93 here
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // --- sid-37595556-B917-4B18-AD74-2BCF527AAAB7: Proposition d'une date d'entretien ---
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code for task sid-37595556-B917-4B18-AD74-2BCF527AAAB7 here
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // --- sid-048D538C-43F7-469E-B89A-0CA584ABFC81: Réponse à la proposition de date ---
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code for task sid-048D538C-43F7-469E-B89A-0CA584ABFC81 here
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // --- sid-6D162641-ADA9-40EC-AF82-B924EF51268A: Convocation des 6 experts ---
      if (_tokenState & 128 == 128) {
        if (id == 5 && msg.sender == participants[8]) {
          // custom code for task sid-6D162641-ADA9-40EC-AF82-B924EF51268A here
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // --- sid-6092EA39-9FE2-45B1-80A3-8851B667F4AD: Envoie du vote et de la délibération ---
      if (_tokenState & 256 == 256) {
        if (id == 6 && msg.sender == participants[10]) {
          // custom code for task sid-6092EA39-9FE2-45B1-80A3-8851B667F4AD here
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // --- sid-1E35BC4F-E014-45C5-9601-FC1C31FE11B6: Envoie de la décision finale ---
      if (_tokenState & 512 == 512) {
        if (id == 7 && msg.sender == participants[12]) {
          // custom code for task sid-1E35BC4F-E014-45C5-9601-FC1C31FE11B6 here
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // --- sid-78ED290B-8A2A-4E31-A733-DD29E2AAFFA4: Transmission de la décision finale ---
      if (_tokenState & 1024 == 1024) {
        if (id == 8 && msg.sender == participants[14]) {
          // custom code for task sid-78ED290B-8A2A-4E31-A733-DD29E2AAFFA4 here
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // --- sid-C3068222-0D2A-4F31-93E7-44ED5F2AFD0B: Gateway after réponse à la demande de candidature ---
      if (_tokenState & 4 == 4) {
        bool matched = false;
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          matched = true;
        }
        if (!matched) {
          // default flow
          _tokenState &= ~uint(4);
          // termination (end event)
          _tokenState |= 0;
          break;
        }
        continue;
      }
      // --- sid-F9244771-04FA-4EA4-939E-323F4985039B: Gateway after réponse à la proposition de date ---
      if (_tokenState & 32 == 32) {
        bool matched = false;
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          matched = true;
        }
        if (!matched) {
          // default flow: Refus de la date -> loopback to Proposition d'une date d'entretien
          _tokenState &= ~uint(32);
          _tokenState |= 8;
        }
        continue;
      }
      // --- sid-09191CDC-5C41-4A3E-8579-13DCFFF9CC5A: Gateway after Transmission de la décision finale ---
      if (_tokenState & 2048 == 2048) {
        bool matched = false;
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(2048);
          // termination (end event)
          _tokenState |= 0;
          matched = true;
          break;
        }
        if (!matched) {
          // default flow: Refus de la candidature
          _tokenState &= ~uint(2048);
          // termination (end event)
          _tokenState |= 0;
          break;
        }
        continue;
      }
      // --- sid-3D0BF6A4-A434-44EE-A7AD-33D29527DF5F: End Event (Refus de la candidature) ---
      if (_tokenState & 0 == 0) {
        // Already ended: nothing to do
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}