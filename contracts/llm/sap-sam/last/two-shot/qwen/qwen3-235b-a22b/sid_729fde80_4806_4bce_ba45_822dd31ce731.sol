// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T12:55:30.796Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_729fde80_4806_4bce_ba45_822dd31ce731 {
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
        // <--- sid-2C952487-1897-4703-BD14-C00233174A01 Bewerbungsunterlagen senden & bestätigen --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      
      if (_tokenState & 2 == 2) {
        // <--- sid-21D2131C-ACF9-43B0-AFA9-110E5D90F751 (exclusiveGateway) --->
        if (conditions & 1 == 1) {
          // Follow sid-40BD8468-DBEE-48B1-9703-936BED73C66F
          _tokenState &= ~uint(2);
          _tokenState |= 4;
        } else {
          // Follow default sid-AA34A234-94BE-4BCE-8867-EA34EFF58250
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }
      
      if (_tokenState & 4 == 4) {
        // <--- sid-AFF80938-EACE-4704-B168-6FD41D6291B8 Fehlende Unterlagen anfordern & senden --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid-4D98FF7B-B8C8-4409-B650-BD9453EAA0F0 (exclusiveGateway) --->
        // Check sid-2C297A37-CD8A-4982-90CA-9ADF85A6A8C9
        if (conditions & 2 == 2) {
          // Follow sid-2C297A37-CD8A-4982-90CA-9ADF85A6A8C9
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        } else {
          // Follow sid-C7842385-3F9A-45BE-8A08-FD086E55C5B9
          _tokenState &= ~uint(8);
          _tokenState |= 32;
        }
        continue;
      }
      
      if (_tokenState & 16 == 16) {
        // <--- sid-B48DD1CF-E421-40C5-A189-47AA16B2A21B Zusage senden --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      
      if (_tokenState & 32 == 32) {
        // <--- sid-93A5BA57-9EB7-44C2-A54E-FF1D2FB83C26 Absage senden --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      
      if (_tokenState & 64 == 64) {
        // <--- sid-8AEE2A64-582E-4A38-8AEA-236E11A012DC (exclusiveGateway) --->
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
