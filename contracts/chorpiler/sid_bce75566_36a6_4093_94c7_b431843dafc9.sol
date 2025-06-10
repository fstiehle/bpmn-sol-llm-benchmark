//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_bce75566_36a6_4093_94c7_b431843dafc9 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;

  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-E9490497-2BF8-40EF-AA19-5DD2A3814375 Customer reports problem --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-D13BFCC6-850D-49B1-880B-295073279AA6 Analyze Problem and tryout different solutions --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-C57DC0A3-EED2-48A4-A208-AB2FC780F555 End the call with a good note --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-B6770AF6-5158-458A-9C9F-2DA65DBFD06C Create Problem Note and forward --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C40F07BA-68FC-46DD-BEA2-0475E97ADFA0 Enquire Service Technicians if free --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-45504FB6-1EAD-4133-B15C-967A703E8CF9 Explain  service Technician about problem --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-395A3D19-0BBB-48CE-BF05-CE0F58BF78F6 Solve the customer problem on-site --->
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-59E2CFCD-9D63-49A7-ACD4-BFC6A59E71ED Record time and incident report in service form --->
        if (8 == id && msg.sender == participants[15]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}