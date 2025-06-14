// test openai/gpt-4.1 - two-shot at 2025-06-12T01:13:13.000Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_6f106151_3fbf_49f3_b4f1_dbddb5207068 {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-3C58D5A9-4A5D-4784-93F5-2EEAD658E4F7 Kunde stellt Antragsformular --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-D836F160-E1FA-4B10-9270-C224CAAA4139 Informieren ueber Ablehnung --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-05B396A1-4772-44AB-B4E2-21384E0A5D44 Informieren ueber zustimmen --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-0C2844F3-8362-40EC-9404-AEE6DE89F808 --->
        bool transitioned = false;
        // sid-7F36541B-5A22-4F83-9F1E-2ED56B2C2B51: condition
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
          continue;
        }
        // sid-D444D23B-E42F-4B3A-8145-48513E956D64: default
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}