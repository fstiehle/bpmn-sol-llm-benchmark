// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T06:42:16.923Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_2c61ff7b_9ab6_4f18_8fb3_b0ee07063796 {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event → ChoreographyTask_1
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_1 (sid-F8B59DBC...) --->
                if (1 == id && msg.sender == participants[1]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_2 (sid-E6FB3735...) --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // Exclusive Gateway
                if (conditions & 1 == 1) {
                    _tokenState = (_tokenState & ~uint(8)) | 32;
                } else {
                    _tokenState = (_tokenState & ~uint(8)) | 16;
                }
                continue;
            }

            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_3 (sid-55992533...) --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    break;
                }
            }

            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask_4 (sid-C94BD69F...) --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_5 (sid-44C6DF0F...) --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
