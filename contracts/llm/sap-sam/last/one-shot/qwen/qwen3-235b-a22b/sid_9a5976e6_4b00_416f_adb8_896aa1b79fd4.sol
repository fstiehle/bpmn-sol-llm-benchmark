// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:21:45.101Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
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
            if (_tokenState & 1 != 0) {
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 != 0) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 64;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue;
            }
            if (_tokenState & 4 != 0) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 != 0) {
                _tokenState &= ~uint(64);
                _tokenState |= 8 | 16 | 32;
                continue;
            }
            if (_tokenState & 8 != 0) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 != 0) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 != 0) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 != 0) {
                if ((_tokenState & 56) == 0) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }
            if (_tokenState & 256 != 0) {
                _tokenState &= ~uint(256);
                _tokenState |= 512;
                continue;
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
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(1024);
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
