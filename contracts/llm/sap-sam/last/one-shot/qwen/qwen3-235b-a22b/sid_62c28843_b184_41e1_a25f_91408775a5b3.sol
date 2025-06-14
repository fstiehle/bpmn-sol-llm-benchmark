// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T18:18:27.594Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_62c28843_b184_41e1_a25f_91408775a5b3 {
    uint public tokenState = 1;
    address[30] public participants;
    uint public conditions;

    constructor(address[30] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 8;
                } else if (conditions & 2 == 2) {
                    _tokenState |= 16;
                } else {
                    _tokenState |= 4;
                }
                continue;
            }
            if (_tokenState & 4 == 4) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[7]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                if (id == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                if (id == 6 && msg.sender == participants[11]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                if (id == 9 && msg.sender == participants[17]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) {
                _tokenState &= ~uint(8192);
                if (conditions & 4 == 4) {
                    _tokenState |= 65536;
                } else {
                    _tokenState |= 32768;
                }
                continue;
            }
            if (_tokenState & 32768 == 32768) {
                if (id == 12 && msg.sender == participants[23]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 16384;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16384 == 16384) {
                if (id == 11 && msg.sender == participants[21]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 131072;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 65536 == 65536) {
                if (id == 13 && msg.sender == participants[25]) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 131072;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 131072 == 131072) {
                _tokenState &= ~uint(131072);
                _tokenState |= 262144;
                continue;
            }
            if (_tokenState & 262144 == 262144) {
                if (id == 14 && msg.sender == participants[26]) {
                    _tokenState &= ~uint(262144);
                    _tokenState |= 524288;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 524288 == 524288) {
                if (id == 15 && msg.sender == participants[28]) {
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
