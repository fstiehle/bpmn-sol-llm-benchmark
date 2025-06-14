// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:38:59.377Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_4ba1809d_622c_4393_9969_d514f1fba8d1 {
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
                // Task 1: Send copies of degree/s
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 2 == 2) {
                // Task 2: Authenticate degree/s
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 4 == 4) {
                // Task 3: Assess standardised degree equivalence
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 8 == 8) {
                // Task 4: Pay accreditation fees
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            } else if (_tokenState & 16 == 16) {
                // Task 5: Notify transaction
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
