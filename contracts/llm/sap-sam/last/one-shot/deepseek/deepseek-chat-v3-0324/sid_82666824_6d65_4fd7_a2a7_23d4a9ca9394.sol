// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:24:15.354Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_82666824_6d65_4fd7_a2a7_23d4a9ca9394 {
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
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-90BA106B-D21C-4A6F-9D20-61879353849B Send product --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-B68D9767-8C3C-4D60-BC5E-66982A8FCA74 Checking product --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-5A35CECB-45AD-4994-AEE3-B9F0DDD05EC8 Gateway --->
                _tokenState &= ~uint(8);
                _tokenState |= 16 | 32 | 64;
                continue;
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-3C568A39-2054-4401-8B0B-E0DB372732BF Send product to repair --->
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-3F98CB79-F885-47D5-BD69-C6355DDCF23C Send money to client --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-5DFB9625-36C4-4410-AACF-2E57231E1B52 Reject complaint/return --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-32A1A621-E61A-455D-8744-722B80F8957C Resend repaired product --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-89AE49BF-22B6-4845-B15D-45F0BF9D87AF Send product to client --->
                if (8 == id && msg.sender == participants[15]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-4E3A000E-7490-46AD-898D-0D19AE76288D End Event --->
                _tokenState &= ~uint(256);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
