//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_64d48248_beb0_44b7_b11c_2ebbbb39c1ce {
  uint public tokenState = 1;
  address[4] public participants;
  uint public conditions;

  constructor(address[4] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-CE6FC14A-131E-46BC-BC22-EB91FC9B3DDC Zahlungsmittel&amp;#10;prüfen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F2D422F5-0187-4B47-AF88-7E50BA466EE1 Zahlungsmittel&amp;#10;erhalten --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}