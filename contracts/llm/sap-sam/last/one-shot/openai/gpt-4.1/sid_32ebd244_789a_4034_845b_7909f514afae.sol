// test openai/gpt-4.1 - one-shot at 2025-06-11T23:33:59.898Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_32ebd244_789a_4034_845b_7909f514afae {
  uint public tokenState = 262144;
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
      if (_tokenState & 262144 == 262144) {
        // <--- E3620D11_E6DC_4A65_B1AA_4EB21EBFC161 Urlaubsantrag ausfuellen und unterschreiben --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 1;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1 == 1) {
        // <--- D7480028_8993_45A4_9935_FB44D4B1EAD0 ausgefuellten und unterschriebenen Urlaubsantrag senden --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- 64F20D69_8C4C_4A2A_BE70_35EEC849B4FB Antrag weiterleiten --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- FF0126DF_BE30_4647_919F_9E823BDA02A5 Antrag pruefen --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1048576;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1048576 == 1048576) {
        // <--- EXCLUSIVE GATEWAY sid_5B43745F_D1AD_4D4C_8C28_CB6749732273 Antrag genehmigt? -->
        bool didTransition = false;
        // sid-23DA0FC7-8557-49DF-A69F-409BF7569EF4: conditions & 1 == 1
        if (!didTransition && (conditions & 1 == 1)) {
          _tokenState &= ~uint(1048576);
          _tokenState |= 4096;
          didTransition = true;
          continue;
        }
        // Default sid-3CB85289-2E27-4B8B-85B4-7CB991D76E68
        if (!didTransition) {
          _tokenState &= ~uint(1048576);
          _tokenState |= 2048;
          continue;
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- 4609FD42_51BC_4BE0_B877_21573CF36C96 Antrag unterzeichnen --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- 3CB8E112_CDEC_4941_AE4C_9242FD4FE427 genehmigten und unterzeichneten Antrag zuruecksenden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- 93A10FCD_BBB8_4C44_8573_877162EBB6CA genehmigten uund unterzeichneten Urlaubsantrag weiterleiten --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- FC29AEDB_216D_4028_91A6_A1370E3290AB Urlaubstage aus Antrag mit Urlaubs und Fehltagekarte in Personalakte abgleichen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 131072;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <--- PARALLEL GATEWAY sid_8CA25B2E_6393_4BC2_BA1F_CA06A1BEC1F7 --->
        // split
        _tokenState &= ~uint(131072);
        _tokenState |= 8192;
        _tokenState |= 32768;
        continue;
      }
      if (_tokenState & 8192 == 8192) {
        // <--- 18ACAE26_A6E9_4892_94D4_AB9A766441F3 genehmigten Antrag zuruecksenden --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- 55FD4B75_CA30_4905_83D1_D83F643560E7 Kopie des Antrages anfertigen und in der Personalakte ablegen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024 && _tokenState & 65536 == 65536) {
        // <--- PARALLEL GATEWAY sid_A7373EDE_B1FD_4798_AF2C_A69407BC8035 --->
        // join
        _tokenState &= ~uint(1024);
        _tokenState &= ~uint(65536);
        _tokenState |= 0;
        break; // is end
      }
      if (_tokenState & 4096 == 4096) {
        // <--- 608D82CC_C620_4F52_B470_F9FD1E8E8A3B abgelehnten Antrag zuruecksenden --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- 50B3F4F3_21BA_4B90_B709_1CAC29BB4287 Abgelehnten Urlaubsantrag weiterleiten --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
