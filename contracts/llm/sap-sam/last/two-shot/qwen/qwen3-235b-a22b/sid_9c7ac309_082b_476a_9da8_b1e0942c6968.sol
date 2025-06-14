// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T14:54:56.468Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_9c7ac309_082b_476a_9da8_b1e0942c6968 {
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
        while (true) {
            // Automatic transitions (gateways and start event)
            if (_tokenState & 1 == 1) {
                // StartEvent → ChoreographyTask1
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            if (_tokenState & 16 == 16) {
                // ExclusiveGateway
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                }
                continue;
            }

            // Choreography tasks
            if (_tokenState & 2 == 2) {
                // ChoreographyTask1 (id 1)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
                break;
            }

            if (_tokenState & 4 == 4) {
                // ChoreographyTask2 (id 2)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
                break;
            }

            if (_tokenState & 8 == 8) {
                // ChoreographyTask3 (id 3)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
                break;
            }

            if (_tokenState & 32 == 32) {
                // ChoreographyTask4 (id 4)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    break;
                }
                break;
            }

            if (_tokenState & 64 == 64) {
                // ChoreographyTask5 (id 5)
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    break;
                }
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
