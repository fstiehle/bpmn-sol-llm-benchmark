// test openai/gpt-4.1 - one-shot at 2025-06-11T23:57:12.517Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9090568f_de99_428e_a30d_f93a0cbf7f22 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-36C17460-CCA2-4F5A-8A93-4DBEE5A85F56 Doctor_Request --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task Doctor_Request here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-72908014-86E6-4EAD-A1BB-94907B277E65 Handle_Symptoms --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task Handle_Symptoms here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // <--- sid-3BE82C81-1697-457F-A8AB-DB30D781B04C Handle_Prescription --->
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task Handle_Prescription here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // <--- sid-AC8B4DA2-7170-4304-8B76-283E2C2FE236 Handle_Medecine --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task Handle_Medecine here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}