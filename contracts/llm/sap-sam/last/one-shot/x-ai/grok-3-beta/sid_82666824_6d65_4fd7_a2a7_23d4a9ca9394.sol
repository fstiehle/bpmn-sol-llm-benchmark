// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:03:10.088Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_82666824_6d65_4fd7_a2a7_23d4a9ca9394 {
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
            // Start Event to Task 1 (Make return/complaint)
            if (_tokenState & 1 == 1) {
                // <--- sid-5B71C081-60D0-41BD-A0DC-E385E5035AA7 Make return/complaint --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Activate Task 2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-90BA106B-D21C-4A6F-9D20-61879353849B Send product --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Task 3
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-B68D9767-8C3C-4D60-BC5E-66982A8FCA74 Checking product --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway sid-5A35CECB-45AD-4994-AEE3-B9F0DDD05EC8
                // No conditions specified in XML, so using placeholder logic
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Path to Task 5 (Send product to repair)
                    continue;
                } else if (conditions & 2 == 2) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Path to Task 6 (Send money to client)
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64; // Path to Task 4 (Reject complaint/return)
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-3C568A39-2054-4401-8B0B-E0DB372732BF Send product to repair --->
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128; // Activate Task 7
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-3F98CB79-F885-47D5-BD69-C6355DDCF23C Send money to client --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End of process
                    break;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-5DFB9625-36C4-4410-AACF-2E57231E1B52 Reject complaint/return --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0; // End of process
                    break;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-32A1A621-E61A-455D-8744-722B80F8957C Resend repaired product --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Task 8
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-89AE49BF-22B6-4845-B15D-45F0BF9D87AF Send product to client --->
                if (8 == id && msg.sender == participants[15]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End of process
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}