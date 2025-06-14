// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:38:16.407Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_b7b36685_2b15_4bc0_8853_27012da21b61 {
    uint public tokenState = 1;
    address[25] public participants;
    uint public conditions;

    constructor(address[25] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Task 1: interacted by homepage (bit 1)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Task 2: login (bit 2)
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            // Exclusive gateway (bit 4)
            if (_tokenState & 4 == 4) {
                if ((conditions & 1) == 1) {
                    // staff login condition
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                } else {
                    // default path
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                }
                continue;
            }

            // Task 3: give staff access (bit 8)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            // Task 4: give normal access (bit 16)
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }

            // Event-based gateway 1 (bit 32)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 128 | 256 | 512;
                continue;
            }

            // Event-based gateway 2 (bit 64)
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                _tokenState |= 1024 | 2048 | 4096 | 8192;
                continue;
            }

            // Task 5: manage employees (bit 128)
            if (_tokenState & 128 == 128) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }

            // Task 6: manage users (bit 256)
            if (_tokenState & 256 == 256) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }

            // Task 7: check return car list (bit 512)
            if (_tokenState & 512 == 512) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }

            // Task 8: search car (bit 1024)
            if (_tokenState & 1024 == 1024) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }

            // Task 9: recommend car (bit 2048)
            if (_tokenState & 2048 == 2048) {
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }

            // Task 10: access FAQ page (bit 4096)
            if (_tokenState & 4096 == 4096) {
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }

            // Task 11: access contact us page (bit 8192)
            if (_tokenState & 8192 == 8192) {
                if (id == 11 && msg.sender == participants[20]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }

            // Task 12: edit personal information (bit 16384)
            if (_tokenState & 16384 == 16384) {
                if (id == 12 && msg.sender == participants[22]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }

            // Parallel gateway joins (bit 65536)
            if (_tokenState & 65536 == 65536) {
                _tokenState &= ~uint(65536);
                _tokenState |= 131072;
                continue;
            }

            // Task 13: notify changes are updated (bit 131072)
            if (_tokenState & 131072 == 131072) {
                if (id == 13 && msg.sender == participants[24]) {
                    _tokenState &= ~uint(131072);
                    _tokenState |= 0;
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
