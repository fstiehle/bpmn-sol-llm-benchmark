// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:06:55.803Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_1822c7e8_cade_4df0_a6d8_f7f836656cd0 {
    uint public tokenState = 1;
    address[28] public participants;
    uint public conditions;
    
    constructor(address[28] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask Send order M1
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Place order M2
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Place order M8
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Request parts M3
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask Send results M4
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Request parts M5
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Send results M6
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask Send F. Results M7
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask Request parts M9
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) {
                // ChoreographyTask Request parts M11
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 16384;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                // ChoreographyTask Send results M10
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16384 == 16384) {
                // ChoreographyTask Send results M12
                if (12 == id && msg.sender == participants[22]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 131072 == 131072) {
                // ChoreographyTask Send F. Results M13
                if (13 == id && msg.sender == participants[24]) {
                    _tokenState &= ~uint(131072);
                    _tokenState |= 262144;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 262144 == 262144) {
                // ChoreographyTask Reply M14
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(262144);
                    _tokenState = 0;
                    break;
                }
            }
            
            // Exclusive gateway after task 1
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 16;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            
            // Parallel gateway split after task 3
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 2048 | 8192;
                continue;
            }
            
            // Parallel gateway join before task 13
            if (_tokenState & 98304 == 98304) {
                _tokenState &= ~uint(98304);
                _tokenState |= 131072;
                continue;
            }
            
            // Exclusive gateway join before task 14
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 262144;
                continue;
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
