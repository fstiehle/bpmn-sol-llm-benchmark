//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_d0882a44_376b_41bc_8a7b_90d431bb4f40 {
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
        // <--- sid-8D30ABAD-3927-4172-9CE2-67F00C02E2C5 Zapłata za towar --->
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
          // <--- sid-F4EB5C5A-7A7E-4B28-8573-394A547027FC Realizacja zamówienia,&amp;#10;przesłanie informacji o przesyłce --->
          if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-C8D7C501-EE1C-4921-80FC-FAB3063BD75A Przekazanie towaru kurierowi --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-17C76E1F-DF07-41C5-AB96-67878F5FDAB1 Aktualizacja danych na stronie --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-884E65EB-CD77-45E9-A251-AC64A7163CD5 Wysłanie informacji o przybyciu kuriera w danym dniu o danej godzinie, próba doręczenia przesyłki --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <--- sid-CE1ACF04-6606-4523-8B8D-AB0FBEAED0B5 Przekazanie do punktu odbiorczego --->
          if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}