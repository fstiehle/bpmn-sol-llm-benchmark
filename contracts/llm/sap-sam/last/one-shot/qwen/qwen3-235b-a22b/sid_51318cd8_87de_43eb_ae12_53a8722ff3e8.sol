// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:57:30.288Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_51318cd8_87de_43eb_ae12_53a8722ff3e8 {
    uint public tokenState = 64;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 64 != 0) {
                // choreographyTask: sid-1BAD194A (taskID:7)
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 1;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1 != 0) {
                // choreographyTask: sid-5215CCEA (taskID:1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 != 0) {
                // choreographyTask: sid-368D5D27 (taskID:2)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 != 0) {
                // choreographyTask: sid-0E20545F (taskID:3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 != 0) {
                // exclusiveGateway sid-6C4A1F5C
                if ((conditions & 1) == 1) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16;
                    continue;
                }
            }
            if (_tokenState & 8 != 0) {
                // choreographyTask: sid-2A104376 (taskID:4)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 != 0) {
                // choreographyTask: sid-AB7BC7F4 (taskID:5)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 != 0) {
                // choreographyTask: sid-AC4DDDB3 (taskID:6)
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
