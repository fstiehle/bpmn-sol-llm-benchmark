// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:40:30.501Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_64d48248_beb0_44b7_b11c_2ebbbb39c1ce {
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
        // <--- ChoreographyTask_sid_CE6FC14A_131E_46BC_BC22_EB91FC9B3DDC Zahlungsmittel pruefen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_sid_F2D422F5_0187_4B47_AF88_7E50BA466EE1 Zahlungsmittel erhalten --->
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
