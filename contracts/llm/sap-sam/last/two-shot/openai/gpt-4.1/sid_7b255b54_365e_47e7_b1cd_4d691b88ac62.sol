// test openai/gpt-4.1 - two-shot at 2025-06-12T01:32:27.526Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_7b255b54_365e_47e7_b1cd_4d691b88ac62 {
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
        // <--- sid-E4BF5698-26B0-4E53-9134-68F4641D06BE Soitto ravintolaan --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-4065B97C-BDFB-41F0-825D-40215F5250DC --->
        // sid-9E3C7DCA-B2C0-44E8-AA2E-7B63B2EC340C (Kyllä) -> sid-E4C327C5-07CC-4A04-9106-8212468451FB
        // sid-29A054A5-D4C2-4D10-976E-03A09D0C6ABD (default, conditions & 1 == 1) -> sid-D451DF8D-1932-4D0A-9C89-044BD06504F1
        bool taken = false;
        if (!taken && (conditions & 1 == 1)) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taken = true;
          continue;
        }
        if (!taken) {
          // default flow
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-E4C327C5-07CC-4A04-9106-8212468451FB Merkitse varaus --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-13BFFF3F-179A-4144-90F1-7A96B24639B9 Asiakas saapuu ravintolaan --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-32FA6611-B7ED-4132-ACCA-8EDED99E85B9 Tilaus --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-75A7D705-28CA-46DE-AC88-687810E8BEC3 Ruokailu --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-4BB8EBFD-FE07-4324-8F91-9D5FDC116C98 Lasku --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-7788CFE4-B6C6-4A0C-B971-D820C58A6533 Asiakas on maksanut laskun --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
