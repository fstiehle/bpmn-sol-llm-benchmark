// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:37:35.983Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_202caeea_22f7_4c00_ba13_a16aaf218b3d {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_E0585C8E_3811_44D5_851A_B84A6AA0BA04 Alarmsignal im Fahrzeug --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_F8DBFF58_2EFC_4411_A0B5_997E69BFC28C CAN_Signal senden --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_E362A37E_E15E_48DA_8AA7_415E1695773A Problem im Lkw melden --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_7ADFA00A_0013_4B13_86A8_4A548E7F69D3 kontaktieren --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_8ABAFDC0_B014_44F3_87DB_D5CEAF80F3F7 Informationen zum Problem senden --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_F1C0F7EC_6FD8_4F2F_BDF2_A9F327A09D15 Fehlermeldung weiterleiten --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid_24BE8A82_43CA_49B3_80A8_C98EAB25D793 Fehlermeldung ubermitteln --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
