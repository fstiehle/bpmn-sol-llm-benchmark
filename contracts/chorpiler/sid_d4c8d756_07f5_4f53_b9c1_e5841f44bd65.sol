//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_d4c8d756_07f5_4f53_b9c1_e5841f44bd65 {
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
        // <--- sid-BED6AF96-81D6-45A0-8342-CEF67F272812 Make an offer --->
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- sid-F0E86181-6E4F-42BC-9ADE-D49F0DAEB01A Ofert acceptance --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-FB98D4EA-6C0C-444C-A72F-D26AB9A063D3 Notiffy of rejection --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-E77CA8AF-C54A-443A-AB59-A20CDC80FFDF Send payment --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-E2611CBC-6268-4CD6-BF50-87C97DA377B1 Order Tickets --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 2 == 2) {
          // <--- sid-EA43C3B0-C88F-4343-A837-2282644D7B6B Refuse payment --->
          if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-4C0438B6-A91D-453A-9333-C4DAA34EB409 Confirm payment --->
          if (6 == id && msg.sender == participants[11]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}