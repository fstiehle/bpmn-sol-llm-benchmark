// test openai/gpt-4.1 - two-shot at 2025-06-12T00:17:56.680Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_32ebd244_789a_4034_845b_7909f514afae {
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
      // sid-E3620D11-E6DC-4A65-B1AA-4EB21EBFC161 Urlaubsantrag ausfuellen und unterschreiben
      if (_tokenState & 1 == 1) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-D7480028-8993-45A4-9935-FB44D4B1EAD0 ausgefuellten und unterschriebenen Urlaubsantrag senden
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-64F20D69-8C4C-4A2A-BE70-35EEC849B4FB Antrag weiterleiten
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // sid-FF0126DF-BE30-4647-919F-9E823BDA02A5 Antrag pruefen
      if (_tokenState & 512 == 512) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-4609FD42-51BC-4BE0-B877-21573CF36C96 Antrag unterzeichnen
      if (_tokenState & 32 == 32) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // sid-3CB8E112-CDEC-4941-AE4C-9242FD4FE427 genehmigten und unterzeichneten Antrag zuruecksenden
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // sid-93A10FCD-BBB8-4C44-8573-877162EBB6CA genehmigten uund unterzeichneten Urlaubsantrag weiterleiten
      if (_tokenState & 128 == 128) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // sid-FC29AEDB-216D-4028-91A6-A1370E3290AB Urlaubstage aus Antrag mit Urlaubs und Fehltagekarte in Personalakte abgleichen
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-18ACAE26-A6E9-4892-94D4-AB9A766441F3 genehmigten Antrag zuruecksenden
      if (_tokenState & 2048 == 2048) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // sid-55FD4B75-CA30-4905-83D1-D83F643560E7 Kopie des Antrages anfertigen und in der Personalakte ablegen
      if (_tokenState & 4096 == 4096) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // sid-50B3F4F3-21BA-4B90-B709-1CAC29BB4287 Abgelehnten Urlaubsantrag weiterleiten
      if (_tokenState & 16384 == 16384) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-608D82CC-C620-4F52-B470-F9FD1E8E8A3B abgelehnten Antrag zuruecksenden
      if (_tokenState & 8192 == 8192) {
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 16384;
        id = 0;
        continue;
        }
      }
      // <--- Exclusive Gateway sid-5B43745F-D1AD-4D4C-8C28-CB6749732273 Antrag genehmigt? --->
      if (_tokenState & 1024 == 1024) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // ja (sid-3CB85289-2E27-4B8B-85B4-7CB991D76E68) -> sid-4609FD42-51BC-4BE0-B877-21573CF36C96
          _tokenState &= ~uint(1024);
          _tokenState |= 32;
          didTransition = true;
          continue;
        }
        // default sid-23DA0FC7-8557-49DF-A69F-409BF7569EF4 -> sid-608D82CC-C620-4F52-B470-F9FD1E8E8A3B
        if (!didTransition) {
          _tokenState &= ~uint(1024);
          _tokenState |= 8192;
          continue;
        }
      }
      // <--- Parallel Gateway sid-8CA25B2E-6393-4BC2-BA1F-CA06A1BEC1F7 split --->
      if (_tokenState & 2048 == 2048) {
        // split: sid-57146514-AC03-4C3F-A6C2-47DE794EB34B -> sid-18ACAE26-A6E9-4892-94D4-AB9A766441F3
        //        sid-639D2CB5-9BEA-4456-AF84-68B822F835FA -> sid-55FD4B75-CA30-4905-83D1-D83F643560E7
        _tokenState &= ~uint(2048);
        _tokenState |= 6144;
        continue;
      }
      // <--- Parallel Gateway sid-A7373EDE-B1FD-4798-AF2C-A69407BC8035 join --->
      if (_tokenState & 8192 == 8192) {
        if ((_tokenState & 4096) == 4096) {
          // wait for sid-55FD4B75-CA30-4905-83D1-D83F643560E7
          break;
        }
        // both incoming done
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}