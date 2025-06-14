// test openai/gpt-4.1 - one-shot at 2025-06-11T23:27:13.486Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_202caeea_22f7_4c00_ba13_a16aaf218b3d {
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
        // <--- sid-F8DBFF58-2EFC-4411-A0B5-997E69BFC28C CAN_Signal_senden --->
        // taskID 2, initiating participant index 2 (Steuergeraet)
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-E362A37E-E15E-48DA-8AA7-415E1695773A Problem_im_Lkw_melden --->
        // taskID 1, initiating participant index 0 (Trigger_Modul)
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-7ADFA00A-0013-4B13-86A8-4A548E7F69D3 kontaktieren --->
        // taskID 3, initiating participant index 4 (Diagnose_Modul)
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-8ABAFDC0-B014-44F3-87DB-D5CEAF80F3F7 Informationen_zum_Problem_senden --->
        // taskID 4, initiating participant index 6 (Steuergeraet_LKW)
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-F1C0F7EC-6FD8-4F2F-BDF2-A9F327A09D15 Fehlermeldung_weiterleiten --->
        // taskID 5, initiating participant index 8 (Diagnose_Modul)
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-24BE8A82-43CA-49B3-80A8-C98EAB25D793 Fehlermeldung_uebermitteln --->
        // taskID 6, initiating participant index 10 (Mobilfunknetz_Modul)
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}