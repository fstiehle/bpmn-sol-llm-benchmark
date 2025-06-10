//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_ee4a8115_e74d_4116_9842_3c1330350860 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-AD3AC946-D856-49B3-84D3-15FA20766A38 Make travel offer --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <--- sid-C4526333-1307-4ED3-B008-1880D7063C2C Book &amp; pay travel --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-BC4E8CE6-BD62-4973-9EAF-8E4B2B8EF42D Reject offer --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-0F6BDC11-E996-4A5D-A3D7-740892D7B241 Order ticket --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 2 == 2) {
          // <--- sid-089B934E-544B-4D95-A189-63B5A88B0778 Notify payment error&amp;#10; --->
          if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <--- sid-34741397-4A3E-4573-B901-4AEEA5CAA933 Notify payment success --->
          if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
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