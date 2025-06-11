// test qwen/qwen3-235b-a22b - one-shot at 2025-06-11T19:36:00.313Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_0786fa46_44c3_4a36_a523_b1a497dacbfc {
    uint public tokenState = 1;
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent -> Task1
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            if (_tokenState & 2 == 2) {
                // Task1 (id=1)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // ParallelGateway split -> Task2 and Task3
                _tokenState &= ~uint(4);
                _tokenState |= 8 | 16;
                continue;
            }

            if (_tokenState & 8 == 8) {
                // Task2 (id=2)
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                // Task3 (id=3)
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // Task4 (id=4)
                if (id == 4 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 32 == 32) {
                // Converging gateway
                if ((_tokenState & (8 | 64)) == 0) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                // Task5 (id=5)
                if (id == 5 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 256 == 256) {
                // Task6 (id=6)
                if (id == 6 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 512 == 512) {
                // Task7 (id=7)
                if (id == 7 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 1024 == 1024) {
                // Task8 (id=8)
                if (id == 8 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break; // end
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
