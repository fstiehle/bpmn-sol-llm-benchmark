// test openai/gpt-4.1 - one-shot at 2025-06-11T23:25:04.557Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
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
      // sid-9BF45F4A-BF50-4B1F-9CA6-A48300FEC94A (taskID 1), bit 1
      if (_tokenState & 1 == 1) {
        // Anrufen
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for task here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Gateway: sid-B5FF172E-CBDE-4E4A-9C42-80CC0FA905BA, bit 2
      if (_tokenState & 2 == 2) {
        // Exclusive Gateway "loesbar"
        // Conditions: "conditions & 1 == 1" => sid-2DBED302-6E32-4E45-B184-7EBA65A4445C to sid-5ADAF5B5-2E03-4531-B02C-72D10257157D (taskID 3)
        // Default: sid-00BEFE45-F6D4-4EDD-A851-975CEFC38E12 to sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 (taskID 2)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        } else {
          // default path
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // sid-4BD2E9FD-7A3A-4418-B277-F03832E242C7 (taskID 2), bit 4
      if (_tokenState & 4 == 4) {
        // Problem loesen
        if (id == 2 && msg.sender == participants[2]) {
          // custom code for task here
          _tokenState &= ~uint(4);
          // SequenceFlow to EndEvent: sid-D3E5C0F7-AA0A-404A-9526-EDACD6DD57E8
          _tokenState |= 0;
          break;
        }
      }
      // sid-5ADAF5B5-2E03-4531-B02C-72D10257157D (taskID 3), bit 8
      if (_tokenState & 8 == 8) {
        // Notiz
        if (id == 3 && msg.sender == participants[4]) {
          // custom code for task here
          _tokenState &= ~uint(8);
          // SequenceFlow to EndEvent: sid-50DDBD74-6BA4-42E0-8F50-9AD4003CED28
          _tokenState |= 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}