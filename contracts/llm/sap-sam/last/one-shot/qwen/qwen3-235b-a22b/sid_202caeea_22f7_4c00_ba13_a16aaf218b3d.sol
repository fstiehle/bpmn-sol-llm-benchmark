// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:02:03.164Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_202caeea_22f7_4c00_ba13_a16aaf218b3d {
  uint public tokenState = 2;
  address[12] public participants;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_F8DBFF58_2EFC_4411_A0B5_997E69BFC28C CAN_Signal_senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 1;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_E362A37E_E15E_48DA_8AA7_415E1695773A Problem_im_Lkw_melden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_7ADFA00A_0013_4B13_86A8_4A548E7F69D3 kontaktieren --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_8ABAFDC0_B014_44F3_87DB_D5CEAF80F3F7 Informationen_zum_Problem_senden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_F1C0F7EC_6FD8_4F2F_BDF2_A9F327A09D15 Fehlermeldung_weiterleiten --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_24BE8A82_43CA_49B3_80A8_C98EAB25D793 Fehlermeldung_ubermiteln --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
