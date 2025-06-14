// test openai/gpt-4.1 - two-shot at 2025-06-12T00:18:10.224Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_332fa8f0_81aa_45bb_b5be_3127302ed498 {
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
      // sid-8D954E41-D56D-47E4-B2B9-ED9E1F703FB9 Pre_return_management
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for sid-8D954E41-D56D-47E4-B2B9-ED9E1F703FB9 Pre_return_management --->
        _tokenState &= ~uint(1);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // sid-6E9DC37A-8C06-4EE7-9143-716B61712655 Inbound_parcel_provisioning
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for sid-6E9DC37A-8C06-4EE7-9143-716B61712655 Inbound_parcel_provisioning --->
        _tokenState &= ~uint(256);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-2FF1B585-29CC-4D04-80BD-161AADC1A3E5 Data_analysis
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-2FF1B585-29CC-4D04-80BD-161AADC1A3E5 Data_analysis --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // sid-B12E935A-27E2-4F4E-AF8B-F828D13B509C Process_provisioning
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for sid-B12E935A-27E2-4F4E-AF8B-F828D13B509C Process_provisioning --->
        _tokenState &= ~uint(128);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-351B7611-EF5D-4A3C-9EA0-0B6F5DBF0F5F Return_provisioning
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-351B7611-EF5D-4A3C-9EA0-0B6F5DBF0F5F Return_provisioning --->
        _tokenState &= ~uint(4);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-4FA3D8A3-1D97-4623-9071-E5B4E7DC50B8 Inventory_provisioning
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for sid-4FA3D8A3-1D97-4623-9071-E5B4E7DC50B8 Inventory_provisioning --->
        _tokenState &= ~uint(1024);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-10D63CD2-32FF-4AD1-966E-5C294D1B0BBB Order_provisioning
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-10D63CD2-32FF-4AD1-966E-5C294D1B0BBB Order_provisioning --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-A11B5D52-BC80-4E22-8EF8-D1AEDBC246A4 Outbound_transport_provisioning
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-A11B5D52-BC80-4E22-8EF8-D1AEDBC246A4 Outbound_transport_provisioning --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}