//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_e49f3cea_5ae6_4aff_81e7_1e4623f03a7f {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-8E04D711-2C7B-47E2-ADA4-C974E6C7D38F Vastaanota korvaushakemus --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-FF15E121-3C47-48F4-836C-7F70E80B3609 Käsittele hakemus --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-4D2CB065-ACA3-4316-9BEB-86DB8739223D Lisätiedot ovat saapuneet --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-3B7A59B6-C2D1-4F53-BC12-780121409AC5 Lisätietoja ei ole saatu --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-6D76069E-5C12-4370-9773-683E77F6E062 Päätöksen teko --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          continue; 
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}