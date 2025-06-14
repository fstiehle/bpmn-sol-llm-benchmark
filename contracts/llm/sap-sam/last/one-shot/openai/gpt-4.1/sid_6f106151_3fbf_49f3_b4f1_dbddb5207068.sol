// test openai/gpt-4.1 - one-shot at 2025-06-11T23:48:05.077Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_6f106151_3fbf_49f3_b4f1_dbddb5207068 {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;
  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-3C58D5A9_4A5D_4784_93F5_2EEAD658E4F7 Kunde stellt Antragsformular --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task (Kunde stellt Antragsformular)
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- ExclusiveGateway sid_0C2844F3_8362_40EC_9404_AEE6DE89F808 --->
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        // sid-7F36541B-5A22-4F83-9F1E-2ED56B2C2B51: conditions & 1 == 1 --> sid-05B396A1-4772-44AB-B4E2-21384E0A5D44
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
          continue;
        }
        // default sid-D444D23B-E42F-4B3A-8145-48513E956D64 --> sid-D836F160-E1FA-4B10-9270-C224CAAA4139
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- sid-D836F160_E1FA_4B10_9270_C224CAAA4139 Informieren ueber Ablehnung --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom code for task (Informieren ueber Ablehnung)
          _tokenState &= ~uint(4);
          // End event, process terminates
          _tokenState = 0;
          break;
        }
      }
      // <--- sid-05B396A1_4772_44AB_B4E2_21384E0A5D44 Informieren ueber zustimmen --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // custom code for task (Informieren ueber zustimmen)
          _tokenState &= ~uint(8);
          // End event, process terminates
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
