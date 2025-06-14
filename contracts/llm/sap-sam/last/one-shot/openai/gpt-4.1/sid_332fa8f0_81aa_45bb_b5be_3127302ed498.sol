// test openai/gpt-4.1 - one-shot at 2025-06-11T23:34:13.649Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_332fa8f0_81aa_45bb_b5be_3127302ed498 {
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
            // sid-8D954E41-D56D-47E4-B2B9-ED9E1F703FB9 (taskID 1) Pre_return_management, initiator: participants[1]
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[1]) {
                    // <--- custom code for Pre_return_management here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // sid-6E9DC37A-8C06-4EE7-9143-716B61712655 (taskID 8) Inbound_parcel_provisioning, initiator: participants[14]
            if (_tokenState & 2 == 2) {
                if (8 == id && msg.sender == participants[14]) {
                    // <--- custom code for Inbound_parcel_provisioning here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // sid-2FF1B585-29CC-4D04-80BD-161AADC1A3E5 (taskID 5) Data_analysis, initiator: participants[8]
            if (_tokenState & 4 == 4) {
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for Data_analysis here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // sid-B12E935A-27E2-4F4E-AF8B-F828D13B509C (taskID 7) Process_provisioning, initiator: participants[12]
            if (_tokenState & 8 == 8) {
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for Process_provisioning here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // sid-351B7611-EF5D-4A3C-9EA0-0B6F5DBF0F5F (taskID 2) Return_provisioning, initiator: participants[2]
            if (_tokenState & 16 == 16) {
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for Return_provisioning here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // sid-4FA3D8A3-1D97-4623-9071-E5B4E7DC50B8 (taskID 6) Inventory_provisioning, initiator: participants[10]
            if (_tokenState & 32 == 32) {
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for Inventory_provisioning here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            // sid-10D63CD2-32FF-4AD1-966E-5C294D1B0BBB (taskID 3) Order_provisioning, initiator: participants[4]
            if (_tokenState & 64 == 64) {
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for Order_provisioning here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // sid-A11B5D52-BC80-4E22-8EF8-D1AEDBC246A4 (taskID 4) Outbound_transport_provisioning, initiator: participants[6]
            if (_tokenState & 128 == 128) {
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for Outbound_transport_provisioning here --->
                    _tokenState &= ~uint(128);
                    // End event reached, clear all tokens.
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}