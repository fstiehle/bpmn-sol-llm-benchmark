//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_c4417a54_a50e_4ff3_83f7_0ffc13671109 {
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
        // <--- sid-49B69D9F-32C2-441F-A81A-CED290BF926C Apply for admission --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-A7A4DD1C-96DD-4B8B-BEAA-17D152E3C38C Send notifications --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-2884A811-FD0D-4DD0-8CE9-FCE61D6BA0A9 Submit documents --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-AEF55E16-7212-4772-8B90-C229DBCA5302 Send PDF --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-29C7B435-456C-440B-A175-D431CEDA1B58 Post PDF and certified transcripts --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-52A5B39F-573A-4335-BE6C-8017868EF356 Receive PDF and certified transcripts --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
        // <--- sid-2F841D2F-49A5-4996-9D1C-11AE37C3E9F7 Cancel Application --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-C2636CD9-CC8B-4073-9CF9-69EFEC5B3475 Send Appropriate Letter --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-77EA6596-05F3-4C8C-BF15-880C8ACAC7A5 Receive Appropriate Letter --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        if (conditions & 1 == 1) {
          // <--- sid-45926A43-910E-427C-89DF-88246692C7D0 Decline offer --->
          if (10 == id && msg.sender == participants[18]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-1057EE16-1EDB-4341-9611-ABF7A02F8AA0 Accept Offer --->
          if (11 == id && msg.sender == participants[20]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
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