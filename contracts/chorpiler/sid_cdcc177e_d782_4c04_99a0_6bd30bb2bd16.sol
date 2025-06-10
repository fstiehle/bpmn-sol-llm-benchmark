//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_cdcc177e_d782_4c04_99a0_6bd30bb2bd16 {
  uint public tokenState = 1;
  address[2] public participants;
  uint public conditions;

  constructor(address[2] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-69013E8D-631E-44AB-A030-716250ECDC26 Envia Factura --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}