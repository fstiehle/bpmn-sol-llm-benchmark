// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:00:57.368Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
    uint public tokenState = 1;
    address[8] public participants;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            uint prev = _tokenState;

            if (_tokenState & 1 != 0) {
                // Start Event → Parallel Split
                _tokenState &= ~uint(1);
                _tokenState |= 2 | 4;
                continue;
            }

            if (_tokenState & 2 != 0) {
                // <--- sid-BD7B4002-9065-4315-AA74-82D3A6E7F757 task1 --->
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 != 0) {
                // <--- sid-BD08DB98-E701-4D6C-9CAA-C146871F6BD5 task2 --->
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 24 == 24) {
                // Parallel Join → Event-Based Gateway
                _tokenState &= ~uint(24);
                _tokenState |= 32;
                continue;
            }

            if (_tokenState & 32 != 0) {
                // Event-Based Gateway → Tasks3 & 4
                _tokenState &= ~uint(32);
                _tokenState |= 64 | 128;
                continue;
            }

            if (_tokenState & 64 != 0) {
                // <--- sid-A83DECE7-E09F-4824-A820-4C2272E6E1B4 task3 --->
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(64);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 128 != 0) {
                // <--- sid-34B7968B-AE9A-47F7-BC39-04BD8B6B1548 task4 --->
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState == prev) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
