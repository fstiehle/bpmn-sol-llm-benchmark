// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:18:21.621Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_332fa8f0_81aa_45bb_b5be_3127302ed498 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_8D954E41_D56D_47E4_B2B9_ED9E1F703FB9 Pre-return management --->
        if (1 == taskID && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_351B7611_EF5D_4A3C_9EA0_0B6F5DBF0F5F Return provisioning --->
        if (2 == taskID && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_10D63CD2_32FF_4AD1_966E_5C294D1B0BBB Order provisioning --->
        if (3 == taskID && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_A11B5D52_BC80_4E22_8EF8_D1AEDBC246A4 Outbound transport provisioning --->
        if (4 == taskID && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_2FF1B585_29CC_4D04_80BD_161AADC1A3E5 Data analysis --->
        if (5 == taskID && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_4FA3D8A3_1D97_4623_9071_E5B4E7DC50B8 Inventory provisioning --->
        if (6 == taskID && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_B12E935A_27E2_4F4E_AF8B_F828D13B509C Process provisioning --->
        if (7 == taskID && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_6E9DC37A_8C06_4EE7_9143_716B61712655 Inbound parcel provisioning --->
        if (8 == taskID && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <---  auto transition  --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
