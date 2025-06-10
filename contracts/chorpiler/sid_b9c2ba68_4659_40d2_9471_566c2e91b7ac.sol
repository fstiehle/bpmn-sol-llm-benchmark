//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_b9c2ba68_4659_40d2_9471_566c2e91b7ac {
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
        // <--- sid-5ADC8478-CCF3-48B8-ABE1-4197264B72FF Angebot anfragen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-EACA8249-3C2F-4EBB-A409-51AF3F8814BE Angebot erstellen --->
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
          // <--- sid-B7A10EE0-97E0-4B20-B5AD-9098499684D9 Angebot nachbessern --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          id = 0;
          continue; 
          }
        }
        if (conditions & 2 == 2) {
          // <--- sid-9D4FCE2E-CC0F-4694-87CB-E2BEE6D52B04 Auftrag erteilen --->
          if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-98A84B16-0B8C-4051-9D3D-1576E59AACAD Absage erteilen --->
          if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
          }
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-AA86C451-5588-432F-8919-E124FEEB30D7 Verfügbarkeit Grafker anfragen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-80BEC461-BB2B-44C9-90E3-804AD8C62CF3 Grafik erstellen und abschicken --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-E748444C-F42D-4D60-8912-FADF230826BB Anzeige freigeben --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
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