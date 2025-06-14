// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T10:22:50.583Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_a128c562_b6ff_4762_86ad_3db757b3baa8 {
    uint public tokenState = 1;
    uint public conditions;
    address[19] public participants;

    constructor(address[19] memory _participants) {
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
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32;
                    continue;
                } else if (conditions & 2 == 2) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 64;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    if (_tokenState == 0) {
                        tokenState = _tokenState;
                        return;
                    }
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 256 | 512;
                continue;
            }
            if (_tokenState & 256 == 256) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    if ((_tokenState & 512) == 0) {
                        _tokenState |= 1024;
                    }
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    if ((_tokenState & 256) == 0) {
                        _tokenState |= 1024;
                    }
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 2048;
                continue;
            }
            if (_tokenState & 2048 == 2048) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) {
                if (id == 9 && msg.sender == participants[17]) {
                    _tokenState &= ~uint(8192);
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}