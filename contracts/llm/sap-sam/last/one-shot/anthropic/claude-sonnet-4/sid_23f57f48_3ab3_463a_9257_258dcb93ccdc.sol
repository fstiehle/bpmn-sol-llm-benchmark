// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:10:09.648Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
    uint public tokenState = 1;
    address[38] public participants;
    uint public conditions;

    constructor(address[38] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask Order with requiered delivery date
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 6;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask Confirms order
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Confirms order with updated project date
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Request payment details
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 96;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask Send payment method
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask Request payment details
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Make payment
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Receive payment method
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask Make payment
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // ChoreographyTask Sends notification first batch
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                // ChoreographyTask Sends shipment
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16384 == 16384) {
                // ChoreographyTask Notification for the first batch of CPU shipment
                if (12 == id && msg.sender == participants[22]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32768 == 32768) {
                // ChoreographyTask Sends shipment
                if (13 == id && msg.sender == participants[24]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 131072 == 131072) {
                // ChoreographyTask Makes reclamation
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(131072);
                    _tokenState |= 524288;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 262144 == 262144) {
                // ChoreographyTask Announces problems with the materials
                if (15 == id && msg.sender == participants[28]) {
                    _tokenState &= ~uint(262144);
                    _tokenState |= 2097152;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1048576 == 1048576) {
                // ChoreographyTask Announces problems with the CPUs
                if (16 == id && msg.sender == participants[30]) {
                    _tokenState &= ~uint(1048576);
                    _tokenState |= 8388608;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2097152 == 2097152) {
                // ChoreographyTask Sends reclamation
                if (17 == id && msg.sender == participants[32]) {
                    _tokenState &= ~uint(2097152);
                    _tokenState |= 4194304;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4194304 == 4194304) {
                // ChoreographyTask Sends the result from the parts check
                if (18 == id && msg.sender == participants[34]) {
                    _tokenState &= ~uint(4194304);
                    _tokenState |= 8388608;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16777216 == 16777216) {
                // ChoreographyTask Sends the results from the diagnostics
                if (19 == id && msg.sender == participants[36]) {
                    _tokenState &= ~uint(16777216);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 6 == 6) {
                // Parallel gateway split
                _tokenState &= ~uint(6);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // Parallel gateway join
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 96 == 96) {
                // Parallel gateway split
                _tokenState &= ~uint(96);
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 512 == 512) {
                // Parallel gateway join
                _tokenState &= ~uint(512);
                _tokenState |= 6144;
                continue;
            }
            if (_tokenState & 6144 == 6144) {
                // Parallel gateway split
                _tokenState &= ~uint(6144);
                _tokenState |= 16384;
                continue;
            }
            if (_tokenState & 8192 == 8192) {
                // Parallel gateway join
                _tokenState &= ~uint(8192);
                _tokenState |= 16384;
                continue;
            }
            if (_tokenState & 65536 == 65536) {
                // Exclusive gateway
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 0;
                    break;
                } else {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 131072;
                    continue;
                }
            }
            if (_tokenState & 524288 == 524288) {
                // Exclusive gateway
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(524288);
                    _tokenState |= 1048576;
                    continue;
                } else {
                    _tokenState &= ~uint(524288);
                    _tokenState |= 262144;
                    continue;
                }
            }
            if (_tokenState & 8388608 == 8388608) {
                // Exclusive gateway join
                _tokenState &= ~uint(8388608);
                _tokenState |= 16777216;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
