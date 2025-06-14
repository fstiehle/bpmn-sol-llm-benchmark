// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:48:56.326Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_7b255b54_365e_47e7_b1cd_4d691b88ac62 {
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
        // <--- ChoreographyTask sid-E4BF5698-26B0-4E53-9134-68F4641D06BE Soitto ravintolaan --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[0], "Only participant 0 can execute this task");
        _tokenState &= ~uint(1);
        if (conditions & 1 == 1) {
          _tokenState |= 2;
        } else {
          _tokenState |= 0;
        }
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-E4C327C5-07CC-4A04-9106-8212468451FB Merkitse varaus --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[2], "Only participant 2 can execute this task");
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-13BFFF3F-179A-4144-90F1-7A96B24639B9 Asiakas saapuu ravintolaan --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[4], "Only participant 4 can execute this task");
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-32FA6611-B7ED-4132-ACCA-8EDED99E85B9 Tilaus --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[6], "Only participant 6 can execute this task");
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-75A7D705-28CA-46DE-AC88-687810E8BEC3 Ruokailu --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[8], "Only participant 8 can execute this task");
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-4BB8EBFD-FE07-4324-8F91-9D5FDC116C98 Lasku --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[10], "Only participant 10 can execute this task");
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask sid-7788CFE4-B6C6-4A0C-B971-D820C58A6533 Asiakas on maksanut laskun --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        require(msg.sender == participants[12], "Only participant 12 can execute this task");
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 128 == 128) {
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
