// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:45:15.713Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_332fa8f0_81aa_45bb_b5be_3127302ed498 {
    uint public tokenState = 1; // Start with the start event active
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event (sid-F8CF09C0-2731-4D9A-9C6B-556CAF47E818)
                // Auto transition to Pre-return management
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Pre-return management (Task 1)
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Pre-return management (Task 1: sid-8D954E41-D56D-47E4-B2B9-ED9E1F703FB9)
                if (1 == id && msg.sender == participants[1]) { // Initiating participant: sid-423CE0C5-DA57-488E-989C-160C4F3CE0DC
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Inbound parcel provisioning (Task 8)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Inbound parcel provisioning (Task 8: sid-6E9DC37A-8C06-4EE7-9143-716B61712655)
                if (8 == id && msg.sender == participants[14]) { // Initiating participant: sid-1D9B3976-F5BB-461E-BB43-B6ED0740462E
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Data analysis (Task 5)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Data analysis (Task 5: sid-2FF1B585-29CC-4D04-80BD-161AADC1A3E5)
                if (5 == id && msg.sender == participants[8]) { // Initiating participant: sid-4546BD46-7BDA-4988-A24A-7DF9CD29F725
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Process provisioning (Task 7)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Process provisioning (Task 7: sid-B12E935A-27E2-4F4E-AF8B-F828D13B509C)
                if (7 == id && msg.sender == participants[12]) { // Initiating participant: sid-6C6DAA4A-E8F1-4097-A0C9-53A6E1EE0A78
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Return provisioning (Task 2)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Return provisioning (Task 2: sid-351B7611-EF5D-4A3C-9EA0-0B6F5DBF0F5F)
                if (2 == id && msg.sender == participants[2]) { // Initiating participant: sid-59274B68-BF3F-47FE-8946-B3F554FA7746
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Inventory provisioning (Task 6)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Inventory provisioning (Task 6: sid-4FA3D8A3-1D97-4623-9071-E5B4E7DC50B8)
                if (6 == id && msg.sender == participants[10]) { // Initiating participant: sid-6AAEE364-9864-41F4-B925-2E6635539636
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate Order provisioning (Task 3)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Order provisioning (Task 3: sid-10D63CD2-32FF-4AD1-966E-5C294D1B0BBB)
                if (3 == id && msg.sender == participants[4]) { // Initiating participant: sid-92B1FD7F-C5F5-493C-9919-6FC66EFF9410
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Outbound transport provisioning (Task 4)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Outbound transport provisioning (Task 4: sid-A11B5D52-BC80-4E22-8EF8-D1AEDBC246A4)
                if (4 == id && msg.sender == participants[6]) { // Initiating participant: sid-6D54FF4E-F6EC-4350-B628-B7A38777620A
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // Process ends
                    break; // End event reached
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}