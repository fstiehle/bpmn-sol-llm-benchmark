//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_bbc5974a_d2cc_42ff_9b76_b736403528f2 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;

  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-E69517BB-1038-4282-BF11-C94C090EA238 Pauschalreise --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F4354EF4-A38A-4BFC-A0FD-937D2E213396 Flug Anfrage --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-C4E99AE3-7BE0-4404-B70D-7D855C7B6C98 Zimmer Anfrage --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 96 == 96) {
        // <--- sid-FD920F44-9571-49A8-A278-F76DA6D308C8 AngebotsÜbermittlung --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(96);
        _tokenState |= 896;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-B89E2CFC-EE75-4C34-BB0D-58C879019986 Zimmer Anfrage --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-FD8A09C3-A452-4FAB-9D6A-DCE1B0CC5267 Flug Anfrage --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-B73A91A4-6383-4821-B6A4-A7D95C3C7757 ZimmerBuchung --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-8A2B90F4-A6D0-4D19-A387-19FCADB929AD FlugBuchung --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-27332D0D-4B46-4565-B179-273713FDEF30 Rechnung --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-4CFE573E-502A-4C68-A927-0FEA26165566 Rechnung --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-F0164C41-BA2E-4E3B-B2B9-714EBEB63496 Rechnung --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 28672 == 28672) {
        // <---  auto transition  --->
        _tokenState &= ~uint(28672);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }

    tokenState = _tokenState;
  }

}