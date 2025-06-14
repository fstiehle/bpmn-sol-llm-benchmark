// test openai/gpt-4.1 - one-shot at 2025-06-11T23:26:44.605Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_1aff29f9_0098_450b_8f30_defee765cb61 {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- 08E44EEC_F5A2_4529_9B95_DAA0B1553E3B Kunde fuellt Formular aus --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- 71EECEC0_BED7_4D5B_A3B9_F5E0A08A1B91 Ticket erstellen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- 04736748_3A55_4172_8EC2_70379C6D6C1C Meldet sich an --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- C3423358_0834_46F4_9BEF_2312F3F5670B Ticket auswaehlen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- exclusive gateway sid_0F1C5333_10D0_4B87_80D3_59126F5AB5F7 --->
        uint matched = 0;
        // condition: conditions & 1 == 1 -> to end
        if (conditions & 1 == 1) {
          // end event sid_B800242F_DF9E_49B1_BB68_2BAC0BF10E80
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          matched = 1;
          break;
        }
        // default outgoing: ja -> 640C6210_0293_4116_9743_EE1E3CECEBC1
        if (matched == 0) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- 640C6210_0293_4116_9743_EE1E3CECEBC1 Ticket bearbeiten --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- 4A7608DF_1B16_49D8_8329_8CE3A53FEB93 Status veraendern --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- C1BA5A74_1714_45AF_B4E3_8A6DA558B477 Ticket abschliessen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- B568F431_74F6_46AC_932A_58E90EB96830 Ticket abspeichern --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- 0E65D5AE_A506_4126_AD69_2C5AF174C9BE Rueckmeldung zu Bearbeitung geben --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- B42BA3E1_4936_4177_9785_0CBF5888F7DB Rueckmeldung einsehen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}