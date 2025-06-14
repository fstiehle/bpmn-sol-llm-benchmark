// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:07:20.220Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_a0a6bc07_66a5_4c5b_8cb4_e810e986932c {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_C0A1EAF6_72BE_4733_817D_D9CDD3F1D5E4 Problem schildern --->
        if (1 == taskID && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_69BA1A06_C37D_48D0_B43D_B9D0CAE2A281 Problem besprechen --->
        if (2 == taskID && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        taskID = 0;
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
        // <--- ChoreographyTask_B4C50627_5A0A_4352_B049_F76B5A945616 Problem gelöst --->
        if (3 == taskID && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_154D7D60_2E88_4DCB_AE1F_A1BFEB9F2EA5 Notiz senden --->
        if (4 == taskID && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_B06C37A2_496C_4024_BCD7_8C2C776A06BD Problem schildern --->
        if (5 == taskID && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_ACA61CA4_C1CA_4A07_BD58_3D4EEFECF95F Problem vor Ort lösen --->
        if (6 == taskID && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_3EB52EB9_A019_42DF_8709_F1C10B3EB532 Auftragsbericht unterschreiben lassen --->
        if (7 == taskID && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
