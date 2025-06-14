// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:20:14.673Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_358b40f6_533a_4871_9977_612ac09f0df0 {
  uint public tokenState = 1;
  address[13] public participants;
  uint public conditions;
  constructor(address[13] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_3864AF81_D77E_4BDF_B04A_37A36CDA95AB Unterlagen von LV anfordern --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_2AE8694D_5220_4899_B2AF_129CDEF92152 Unterlagen fuer Bank bearbeiten & #10;& #10;(Pfandurkunde, Darlehensvertrag) --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_364C20F3_8EC5_4B6E_A1BE_B3D4754B613E Pfandrecht, Eintragung ins Grundbuch --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_9843D9F4_7039_4AFB_BA38_B021D8E5DD43 Zuzahlung nach Baufortschritt (einfordern) --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_7C24CC5A_BF7B_4DCC_A22D_39AF6BC6D02B Endabrechnung mit Land OOE --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_27232A43_7505_4987_8DCE_A6C9EF8849FF Sondertilgung berechnen und buchen --->
        if (6 == id && msg.sender == participants[11]) {
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
