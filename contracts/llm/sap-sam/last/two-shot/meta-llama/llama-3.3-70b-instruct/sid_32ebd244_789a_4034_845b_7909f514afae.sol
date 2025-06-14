// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T10:53:57.426Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_32ebd244_789a_4034_845b_7909f514afae {
  uint public tokenState = 1;
  address[24] public participants;
  uint public conditions;
  constructor(address[24] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-D7480028-8993-45A4-9935-FB44D4B1EAD0 ausgefüllten und unterschriebenen Urlaubsantrag senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-64F20D69-8C4C-4A2A-BE70-35EEC849B4FB Antrag weiterleiten --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-93A10FCD-BBB8-4C44-8573-877162EBB6CA genehmigten uund unterzeichneten Urlaubsantrag weiterleiten --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-3CB8E112-CDEC-4941-AE4C-9242FD4FE427 genehmigten und unterzeichneten Antrag zurücksenden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-50B3F4F3-21BA-4B90-B709-1CAC29BB4287 Abgelehnten Urlaubsantrag weiterleiten --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-FC29AEDB-216D-4028-91A6-A1370E3290AB Urlaubstage aus Antrag mit Urlaubs- und Fehltagekarte in Personalakte abgleichen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-18ACAE26-A6E9-4892-94D4-AB9A766441F3 genehmigten Antrag zurücksenden --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-55FD4B75-CA30-4905-83D1-D83F643560E7 Kopie des Antrages anfertigen und in der Personalakte ablegen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-FF0126DF-BE30-4647-919F-9E823BDA02A5 Antrag prüfen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-4609FD42-51BC-4BE0-B877-21573CF36C96 Antrag unterzeichnen --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-608D82CC-C620-4F52-B470-F9FD1E8E8A3B abgelehnten Antrag zurücksenden --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
