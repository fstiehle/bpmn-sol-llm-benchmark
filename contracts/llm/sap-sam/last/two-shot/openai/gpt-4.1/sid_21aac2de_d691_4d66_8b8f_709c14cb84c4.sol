// test openai/gpt-4.1 - two-shot at 2025-06-12T00:12:37.391Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_21aac2de_d691_4d66_8b8f_709c14cb84c4 {
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
        // <--- sid-06D8F2D0-6BD1-4AF1-B057-F2BDF456D669 Anderung_senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-A06E9F8A-1AFE-44B0-B216-2031CB8BE358 Vorschlag_bearbeiten --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-03DBAEBA-74CD-4B04-BD71-F56E32E84F02 Vorschlag_bearbeiten --->
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7 Verhandlung_uber_Meeting --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-F8A4FB9C-08D5-433D-8DA5-4990DE96F98E Geschaftsfuhrer_informieren --->
        if (5 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Parallel split at sid-C0AFA4ED-0702-4751-8DF3-2C8A14C92959 (tokenState & 2)
      if (_tokenState & 2 == 2) {
        // <--- Parallel split sid-C0AFA4ED-0702-4751-8DF3-2C8A14C92959 --->
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue; 
      }
      // Parallel join at sid-1133F5B6-D5E3-45A1-B3AA-C41BC9AAA7D5 (tokenState & 16)
      if (_tokenState & 16 == 16) {
        // Auto transition for parallel join
        if (((_tokenState & 4) != 4) && ((_tokenState & 8) != 8)) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        }
      }
      // Exclusive gateway sid-081E9232-C01C-420D-A833-6C22805EF577 (tokenState & 32)
      if (_tokenState & 32 == 32) {
        // sid-A2833AF7-F543-402E-8DBD-7D246B59B07B: conditions & 1 == 1 -> end
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
        // sid-CB40259E-39A0-45AC-B227-8AA8C2C37CC5: default, go to sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7
        _tokenState &= ~uint(32);
        _tokenState |= 32;
        // Actually, to avoid infinite loop and repeated execution, need to map to correct token: set token for sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7 (task 4), which is 32
        // But we're already at 32, so we need to ensure we "activate" that task (which is already handled above)
        break; // so task 4 can be enacted by participant[7] in next enact
      }
      // Exclusive gateway sid-F759C76E-18F3-4988-9440-EC54330EC30C (tokenState & 64)
      if (_tokenState & 64 == 64) {
        // sid-C15A8436-8556-49F9-917E-672D1DFCFA77: conditions & 2 == 2 -> sid-F8A4FB9C-08D5-433D-8DA5-4990DE96F98E (task 5, token 128)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue; 
        }
        // sid-A811AAC6-2F49-47DF-B6FA-643F6855EA6C: default -> end
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
