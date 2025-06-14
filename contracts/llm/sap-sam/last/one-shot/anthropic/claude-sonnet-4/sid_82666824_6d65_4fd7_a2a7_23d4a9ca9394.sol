// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:05:45.386Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_82666824_6d65_4fd7_a2a7_23d4a9ca9394 {
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
                // <--- sid-5B71C081-60D0-41BD-A0DC-E385E5035AA7 Make return/complaint --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-90BA106B-D21C-4A6F-9D20-61879353849B Send product --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-B68D9767-8C3C-4D60-BC5E-66982A8FCA74 Checking product --->
                if (3 == id && msg.sender == participants[5]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-5DFB9625-36C4-4410-AACF-2E57231E1B52 Reject complaint/return --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-3C568A39-2054-4401-8B0B-E0DB372732BF Send product to repair --->
                if (5 == id && msg.sender == participants[9]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-3F98CB79-F885-47D5-BD69-C6355DDCF23C Send money to client --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-32A1A621-E61A-455D-8744-722B80F8957C Resend repaired product --->
                if (7 == id && msg.sender == participants[13]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-89AE49BF-22B6-4845-B15D-45F0BF9D87AF Send product to client --->
                if (8 == id && msg.sender == participants[15]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- auto transition from event based gateway --->
                _tokenState &= ~uint(8);
                _tokenState |= 176; // 16 + 32 + 128
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
