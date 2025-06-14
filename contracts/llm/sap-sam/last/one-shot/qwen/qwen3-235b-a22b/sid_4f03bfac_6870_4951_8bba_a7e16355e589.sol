// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:51:17.851Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_4f03bfac_6870_4951_8bba_a7e16355e589 {
    uint public tokenState = 1;
    address[22] public participants;
    uint public conditions;

    constructor(address[22] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (true) {
            uint prevToken = _tokenState;
            // Start Event
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            // Task 1: sid-83CB8E6A
            if (_tokenState & 2 == 2 && id == 1 && msg.sender == participants[0]) {
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                id = 0;
                continue;
            }

            // Task 2: sid-2C45C0B5
            if (_tokenState & 8 == 8 && id == 2 && msg.sender == participants[2]) {
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                id = 0;
                continue;
            }

            // Task 3: sid-155E169F
            if (_tokenState & 256 == 256 && id == 3 && msg.sender == participants[4]) {
                _tokenState &= ~uint(256);
                _tokenState |= 512;
                id = 0;
                continue;
            }

            // Task 4: sid-CC8C53B3
            if (_tokenState & 32 == 32 && id == 4 && msg.sender == participants[6]) {
                _tokenState &= ~uint(32);
                _tokenState |= 4;
                id = 0;
                continue;
            }

            // Task 5: sid-ACFEBAF1
            if (_tokenState & 128 == 128 && id == 5 && msg.sender == participants[8]) {
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                id = 0;
                continue;
            }

            // Task 6: sid-9FD7CD92
            if (_tokenState & 64 == 64 && id == 6 && msg.sender == participants[10]) {
                _tokenState &= ~uint(64);
                _tokenState |= 0;
                break;
            }

            // Task 7: sid-582D082F
            if (_tokenState & 512 == 512 && id == 7 && msg.sender == participants[12]) {
                _tokenState &= ~uint(512);
                _tokenState |= 2048;
                id = 0;
                continue;
            }

            // Task 8: sid-B2528142
            if (_tokenState & 1024 == 1024 && id == 8 && msg.sender == participants[14]) {
                _tokenState &= ~uint(1024);
                _tokenState |= 16384;
                id = 0;
                continue;
            }

            // Task 9: sid-5A5EEB58
            if (_tokenState & 4096 == 4096 && id == 9 && msg.sender == participants[16]) {
                _tokenState &= ~uint(4096);
                _tokenState |= 1024;
                id = 0;
                continue;
            }

            // Task 10: sid-7AEEA2EE
            if (_tokenState & 8192 == 8192 && id == 10 && msg.sender == participants[18]) {
                _tokenState &= ~uint(8192);
                _tokenState |= 0;
                break;
            }

            // Task 11: sid-7A4631E5
            if (_tokenState & 32768 == 32768 && id == 11 && msg.sender == participants[20]) {
                _tokenState &= ~uint(32768);
                _tokenState |= 2048;
                id = 0;
                continue;
            }

            // Exclusive Gateway sid-3548761B
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                bool fired = false;

                if (conditions & 1 == 1) {
                    _tokenState |= 32;
                    fired = true;
                }
                if (conditions & 2 == 2) {
                    _tokenState |= 128;
                    fired = true;
                }
                if (conditions & 4 == 4) {
                    _tokenState |= 64;
                    fired = true;
                }
                if (!fired) {
                    _tokenState |= 32;
                }
                continue;
            }

            // Exclusive Gateway sid-CCEF2766
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8;
                continue;
            }

            // Exclusive Gateway sid-60A13C3B
            if (_tokenState & 16384 == 16384) {
                _tokenState &= ~uint(16384);
                bool fired = false;

                if (conditions & 4 == 4) {
                    _tokenState |= 32768;
                    fired = true;
                }
                if (!fired) {
                    _tokenState |= 8192;
                }
                continue;
            }

            // Exclusive Gateway sid-6D663699
            if (_tokenState & 2048 == 2048) {
                _tokenState &= ~uint(2048);
                _tokenState |= 4096;
                continue;
            }

            if (_tokenState == prevToken) break;
        }
        tokenState = _tokenState;
    }
}
