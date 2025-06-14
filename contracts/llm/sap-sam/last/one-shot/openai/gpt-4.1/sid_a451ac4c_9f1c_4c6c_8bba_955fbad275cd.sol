// test openai/gpt-4.1 - one-shot at 2025-06-12T00:03:29.059Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a451ac4c_9f1c_4c6c_8bba_955fbad275cd {
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
        // <--- sid_108E4ABE_4DB0_44C2_8647_91EC4B6524B7 Ware reklamieren --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_813DE3BA_8680_45CB_925D_ED87F741FA23 Retour Etikett erstellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_EEE1B15D_5719_483C_8B5A_55043DDC82FA Ware abschicken --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // Exclusive Gateway: sid_FCC2BF6C_D7AB_430F_BC38_3A10AEB6D9EC
      if (_tokenState & 8 == 8) {
        bool transitioned = false;
        // sid_41C66269_1A75_43BB_9E00_D6C3A6962F2A conditions & 1 == 1 -> sid_FB127610_7505_4F9E_ACA7_836BB1D685A4
        if (!transitioned && (conditions & 1 == 1)) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // default: sid_CAB222DD_C1C5_4B70_92CE_160041D6701C -> sid_429BDAF2_1423_458C_B9EB_EBC8FE1DA435
        if(!transitioned) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_429BDAF2_1423_458C_B9EB_EBC8FE1DA435 Geld zurueck --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_FB127610_7505_4F9E_ACA7_836BB1D685A4 Ware zurueck --->
        if (5 == id && msg.sender == participants[8]) {
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
