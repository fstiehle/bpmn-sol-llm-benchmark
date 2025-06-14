// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:17:36.334Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_848b09bf_d759_44bc_8a4b_954dff55e26c {
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
        // ChoreographyTask_29382691-CB62-40F3-A6A9-5C643BCD67F4 (Anruf)
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask_482ECE6A-6926-4174-B9E2-1C7B992D32EC (Prolem am Telefon lösen)
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // Exclusive gateway
        // Check if the conditional sequence flow can be taken
        if (conditions & 1 == 1) {
          // Follow the "Problem wurde nicht gelöst" path
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // Follow the default path "Problem wurde gelöst"
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask_E7B112CB-896D-4159-9464-B74D47DE6861 (Problem wurde nicht gelöst)
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ChoreographyTask_2D85381C-5785-40E1-95C2-8726B0E2869E (Prolem weitergeben)
        if (id == 5 && msg.sender == participants[8]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask_20BC5888-EE78-45CF-9853-A0957742FEC2 (Kunden besuchen)
        if (id == 6 && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask_164C0FA3-1643-4A7A-9EA0-13E3D9F745B9 (Prolem lösen)
        if (id == 7 && msg.sender == participants[12]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // ChoreographyTask_48480116-350F-44A4-B921-AA30302FA5E0 (Formular unterschreiben)
        if (id == 8 && msg.sender == participants[14]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask_737C1F68-8E64-44F6-9DA9-87F49EC235AB (Prolem wurde gelöst)
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // Reached end event
        _tokenState = 0;
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
