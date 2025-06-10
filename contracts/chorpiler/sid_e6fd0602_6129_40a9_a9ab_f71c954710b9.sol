//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_e6fd0602_6129_40a9_a9ab_f71c954710b9 {
  uint public tokenState = 1;
  address[28] public participants;
  uint public conditions;

  constructor(address[28] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        if (conditions & 1 == 1) {
          // <--- sid-4FC2880F-0A70-4C24-BF7E-D52C8294C015 Request insurance --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-55D1CCCB-DE54-41B9-914E-E3C57C4AC1FD Request availability --->
          if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-410FD9A4-38CA-43A8-8E7C-34292A98E216 Send availability --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 1;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue; 
        }
        else {
          // <--- sid-8881EB1E-12B1-40B1-9D52-3B8F57C56827 Estimate insurance cost --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CFFF8E31-F984-412C-BE4B-8D33F712E20A Pay insurance --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-4C006F82-5530-4F0B-BAA1-3DAD25C2B813 Pay bike --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-25559F7B-7E43-4CAD-81E8-A968934B3248 Give bike --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-65E2779F-73A7-4557-824B-C622AAED482C Report damage --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
        // <--- sid-0C9FD1F1-0143-4FFA-A58A-9E78984066D2 Send feedback --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-3AA61D95-0E1B-4A06-A82D-2E54282E9D99 Damage evaluation --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 4 == 4) {
          // <--- sid-06F66337-FC72-47BE-AB99-C9D52FB2071A Damage refund --->
          if (11 == id && msg.sender == participants[20]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-81B04E2C-81DE-4CA9-A354-10A2F7F960E1 Return bike back --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 3072;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-88983ADB-4BDB-44AF-B1B6-741B7363CDFC Give credits --->
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-4910026D-AC9B-4EED-9347-2CCB9A44F581 Send receipt --->
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 12288 == 12288) {
        // <---  auto transition  --->
        _tokenState &= ~uint(12288);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }

    tokenState = _tokenState;
  }

}