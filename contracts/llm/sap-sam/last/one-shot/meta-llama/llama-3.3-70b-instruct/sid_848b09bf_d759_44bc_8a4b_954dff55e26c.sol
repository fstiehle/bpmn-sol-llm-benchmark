// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:52:58.694Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_848b09bf_d759_44bc_8a4b_954dff55e26c {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  mapping (uint => uint) public taskIDtoIndex;
  constructor(address[16] memory _participants) {
    participants = _participants;
    taskIDtoIndex[1] = 0;
    taskIDtoIndex[2] = 1;
    taskIDtoIndex[3] = 2;
    taskIDtoIndex[4] = 3;
    taskIDtoIndex[5] = 4;
    taskIDtoIndex[6] = 5;
    taskIDtoIndex[7] = 6;
    taskIDtoIndex[8] = 7;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_29382691_CB62_40F3_A6A9_5C643BCD67F4 Anruf --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_482ECE6A_6926_4174_B9E2_1C7B992D32EC Prolem am Telefon lösen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_737C1F68_8E64_44F6_9DA9_87F49EC235AB Prolem wurde gelöst --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_E7B112CB_896D_4159_9464_B74D47DE6861 Problem wurde nicht gelöst --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_2D85381C_5785_40E1_95C2_8726B0E2869E Prolem weitergeben --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_20BC5888_EE78_45CF_9853_A0957742FEC2 Kunden besuchen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_164C0FA3_1643_4A7A_9EA0_13E3D9F745B9 Prolem lösen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- ChoreographyTask_48480116_350F_44A4_B921_AA30302FA5E0 Formular unterschreiben --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
