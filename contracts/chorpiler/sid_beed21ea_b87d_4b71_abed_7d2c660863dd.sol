//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_beed21ea_b87d_4b71_abed_7d2c660863dd {
  uint public tokenState = 1;
  address[6] public participants;
  uint public conditions;

  constructor(address[6] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-B75BD5E2-708F-4FE7-BF07-C064B732A534 Solicitud de cubrir una exclusiva --->
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
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
        else {
          // <--- sid-2C0FE83C-2B5E-46E3-B209-3D9E0D685400 Asignar la solicitud --->
          if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-840CECE5-3871-4B5A-AB17-DCFC24707FAF Entregar la exclusiva --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}