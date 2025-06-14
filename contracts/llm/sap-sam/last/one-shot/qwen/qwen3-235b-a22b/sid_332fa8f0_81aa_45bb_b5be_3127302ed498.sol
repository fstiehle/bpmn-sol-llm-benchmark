// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:31:54.743Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_332fa8f0_81aa_45bb_b5be_3127302ed498 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-8D954E41-D56D-47E4-B2B9-ED9E1F703FB9 Pre-return management --->
        if (1 == id && msg.sender == participants[1]) {
        _tokenState &= ~uint(1);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-6E9DC37A-8C06-4EE7-9143-716B61712655 Inbound parcel provisioning --->
        if (8 == id && msg.sender == participants[14]) {
        _tokenState &= ~uint(128);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-2FF1B585-29CC-4D04-80BD-161AADC1A3E5 Data analysis --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-B12E935A-27E2-4F4E-AF8B-F828D13B509C Process provisioning --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(64);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-351B7611-EF5D-4A3C-9EA0-0B6F5DBF0F5F Return provisioning --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-4FA3D8A3-1D97-4623-9071-E5B4E7DC50B8 Inventory provisioning --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(32);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-10D63CD2-32FF-4AD1-966E-5C294D1B0BBB Order provisioning --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-A11B5D52-BC80-4E22-8EF8-D1AEDBC246A4 Outbound transport provisioning --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
