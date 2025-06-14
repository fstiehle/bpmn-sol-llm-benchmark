// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T10:16:10.591Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_32ebd244_789a_4034_845b_7909f514afae {
    uint public tokenState = 1;
    address[24] public participants;
    uint public conditions;

    constructor(address[24] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 != 0) {
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 != 0) {
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 != 0) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 != 0) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 != 0) {
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 != 0) {
                _tokenState &= ~uint(32);
                if (conditions & 1 == 1) {
                    _tokenState |= 16384;
                } else {
                    _tokenState |= 64;
                }
                continue;
            }
            if (_tokenState & 64 != 0) {
                if (id == 11 && msg.sender == participants[20]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 != 0) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 != 0) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 != 0) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 != 0) {
                _tokenState &= ~uint(1024);
                _tokenState |= 2048 | 4096;
                continue;
            }
            if (_tokenState & 2048 != 0) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 != 0) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 != 0) {
                _tokenState &= ~uint(8192);
                _tokenState |= 65536;
                continue;
            }
            if (_tokenState & 16384 != 0) {
                if (id == 12 && msg.sender == participants[22]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32768 != 0) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 65536 != 0) {
                _tokenState &= ~uint(65536);
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
