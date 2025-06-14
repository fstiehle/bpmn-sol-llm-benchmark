// test openai/gpt-4.1 - two-shot at 2025-06-12T00:09:14.946Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_0d6d63ff_a888_46c1_8a54_c14e911d0d83 {
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
        // <--- sid-9BF45F4A_BF50_4B1F_9CA6_A48300FEC94A Anrufen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-4BD2E9FD_7A3A_4418_B277_F03832E242C7 Problem losen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-5ADAF5B5_2E03_4531_B02C_72D10257157D Notiz --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway losbar? --->
        bool didTransition = false;
        // condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-00BEFE45-F6D4-4EDD-A851-975CEFC38E12
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        }
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
