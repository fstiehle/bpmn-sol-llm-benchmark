// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:55:39.898Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_7dd609da_b461_4317_8d21_aa67f3d3c43c {
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
                // ChoreographyTask sid-D8DF7A5B-B137-4687-A879-69C850052582 (taskID 1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-57A72721-2BE2-4D5C-B58E-5A4A1348616A (taskID 2)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ExclusiveGateway sid-521CBDD1-6F23-41C1-BBFA-E19A3E418B0F
                if (conditions & 1 == 1) {
                    _tokenState = (_tokenState & ~uint(4)) | 16;
                } else {
                    _tokenState = (_tokenState & ~uint(4)) | 8;
                }
                continue;
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-2CD0A34F-CFFD-4787-B104-9221A4FBB61B (taskID 3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-F090F35F-F607-4150-ADBD-5618474E68B2 (taskID 4)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-4E287ACC-E235-4363-97B3-7E34EA6B639B (taskID 5)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
