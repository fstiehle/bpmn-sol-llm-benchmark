// test openai/gpt-4.1 - one-shot at 2025-06-11T23:42:38.709Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_58485904_a81a_4272_b538_07f8d1088ece {
  uint public tokenState = 1;
  address[26] public participants;
  uint public conditions;
  constructor(address[26] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_44B55E4F_DE9C_4860_8E53_1917B2A0863D Return information provisioning --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_8A2CCF09_71BA_4819_80FE_A7C3391471E9 Data analysis --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_B5425D44_FF60_41FD_A19D_407767378426 Stock provisioning --->
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_3A15E5D7_A616_4586_BB9A_0E6975CCAB7E Service provisioning --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_03D58ACE_7B6C_4114_A83E_DE9FF99E2B49 Inbound parcel provisioning --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_B6ED31E8_50BF_4329_BFA2_0DED6959E4E3 Inbound operations provisioning --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid_8710E1FF_4C42_43EF_B9E7_982BBCFC7EE0 Return process provisioning --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid_C15B3C20_46BF_4CAA_9D41_E88FE9943D21 Grading provisioning --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid_716893C1_0C70_4D3C_A021_0ED392950526 Inventory provisioning --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid_916D3B36_0B94_49C7_81DE_68E29B06433A Order provisioning --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid_701C89F6_419F_4AA7_9089_47315823A340 Outbound operations provisioning --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid_A08C028D_2ABA_45CC_BC58_61B8C21492A8 Shipment planning --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid_975DBBF9_416A_469E_8196_E7A0D8B283A2 Transportation provisioning --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState = 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}