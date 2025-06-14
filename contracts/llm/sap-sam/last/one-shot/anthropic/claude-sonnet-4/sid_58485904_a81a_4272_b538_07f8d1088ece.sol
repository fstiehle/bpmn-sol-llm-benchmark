// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:11:36.217Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_58485904_a81a_4272_b538_07f8d1088ece {
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
                // Return information provisioning
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Data analysis
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Stock provisioning
                if (13 == id && msg.sender == participants[24]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Service provisioning
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Inbound parcel provisioning
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Inbound operations provisioning
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Return process provisioning
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Grading provisioning
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Inventory provisioning
                if (12 == id && msg.sender == participants[22]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // Order provisioning
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // Outbound operations provisioning
                if (9 == id && msg.sender == participants[17]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // Shipment planning
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                // Transportation provisioning
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
