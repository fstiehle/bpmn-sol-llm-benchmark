// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:47:37.787Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if ((_tokenState & 1) == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 2) == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 4) == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 8) == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            if ((_tokenState & 16) == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 32) == 32) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 64) == 64) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 2;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                }
                continue;
            }
            if ((_tokenState & 128) == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                continue;
            }
            if ((_tokenState & 256) == 256) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 4096;
                } else {
                    _tokenState &= ~uint(256);
                    _tokenState |= 4;
                }
                continue;
            }
            if ((_tokenState & 512) == 512) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 16;
                } else {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                }
                continue;
            }
            if ((_tokenState & 1024) == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 0;
                break;
            }
            if ((_tokenState & 2048) == 2048) {
                if (conditions & 8 == 8) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                } else {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 32;
                }
                continue;
            }
            if ((_tokenState & 4096) == 4096) {
                _tokenState &= ~uint(4096);
                _tokenState |= 8;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
