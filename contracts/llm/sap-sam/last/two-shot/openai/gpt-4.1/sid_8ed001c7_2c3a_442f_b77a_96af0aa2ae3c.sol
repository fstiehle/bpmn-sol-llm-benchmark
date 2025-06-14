// test openai/gpt-4.1 - two-shot at 2025-06-12T01:42:06.564Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_8ed001c7_2c3a_442f_b77a_96af0aa2ae3c {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-BC676960-23F9-4F7B-9EA9-EFD75EF13174 anfrage_stellen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-83B3553F-084D-4DB3-AE67-CDA14502E47B Angebot_vorlegen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway sid-1F6F2DA4-DC5B-4C6E-97D5-7A930E813EC0
      if (_tokenState & 4 == 4) {
        // This exclusive gateway splits into two: sid-FD9325D9-C67E-4CEB-A961-7D37B3FD6822 (taskID=3) and sid-294C7BB5-AE35-45CD-88C4-BEEC829E3391 (taskID=4)
        // No explicit conditions in model, so split both branches
        _tokenState &= ~uint(4);
        _tokenState |= 24;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-FD9325D9-C67E-4CEB-A961-7D37B3FD6822 angebot_annehmen --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-294C7BB5-AE35-45CD-88C4-BEEC829E3391 angebot_ablehnen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        // End event sid-655F1CBD-D0B6-4817-AF3A-1FDAC96B3F4C
        _tokenState |= 0;
        break;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-BAD12DD8-61E5-43CE-AF0A-15F217994338 Verfugbarkeit_prufen --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-0A67D3C3-2A37-4E8C-B339-B9FB95D1E7D3 kaffebohnen_bestellen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-AEE98631-784A-44AE-B5FB-9AA162840E22 kaffebohnen_an_gmbh_schoicken --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        // End event sid-655F1CBD-D0B6-4817-AF3A-1FDAC96B3F4C
        _tokenState |= 0;
        break;
        }
      }
      // No more auto transitions
      break;
    }
    tokenState = _tokenState;
  }
}