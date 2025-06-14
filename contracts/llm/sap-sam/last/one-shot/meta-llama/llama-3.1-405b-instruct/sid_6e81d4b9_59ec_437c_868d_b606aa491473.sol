// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:16:05.675Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_6e81d4b9_59ec_437c_868d_b606aa491473 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_1 Solicitar Cotización --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Exclusive Gateway: Acepta Cotización --->
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_2 Comprar Productos --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_3 Solicitar Abastecimiento --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_4 Enviar Productos --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
