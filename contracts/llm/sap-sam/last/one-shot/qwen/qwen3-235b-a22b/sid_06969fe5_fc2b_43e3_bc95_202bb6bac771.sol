// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:17:59.434Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (true) {
            if (_tokenState == 0) break;

            // Task 1: Sharing files
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway diverging
            if (_tokenState & 2 == 2) {
                bool cond1 = (conditions & 1) == 1;
                bool cond2 = (conditions & 2) == 2;
                uint next = 0;
                if (cond1) next |= 8;
                if (cond2) next |= 16;
                if (next == 0) next = 4;
                _tokenState &= ~uint(2);
                _tokenState |= next;
                continue;
            }

            // Task 2: Rating information
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // Task 3: Enriching information
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway converging
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }

            // Task 4: Retrieving information
            if (_tokenState & 32 == 32) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}
