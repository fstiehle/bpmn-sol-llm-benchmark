// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T04:46:12.750Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_049985cd_4703_446d_9018_b094d2a6b682 {
    uint public tokenState = 1;
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
            uint prevTokenState = _tokenState;

            // Task 1: Make travel offer
            if (_tokenState & 1 != 0) {
                if (id == 1 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    if (conditions & 1 == 1) {
                        _tokenState |= 4; // Task3
                    } else {
                        _tokenState |= 2; // Task2
                    }
                    id = 0;
                    continue;
                }
            }

            // Task 2: Reject offer
            if (_tokenState & 2 != 0) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    id = 0;
                    continue;
                }
            }

            // Task 3: Book Travel & confirm booking
            if (_tokenState & 4 != 0) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Task4
                    id = 0;
                    continue;
                }
            }

            // Task 4: Pay Travel
            if (_tokenState & 8 != 0) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Task5
                    id = 0;
                    continue;
                }
            }

            // Task 5: Order ticket
            if (_tokenState & 16 != 0) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    if (conditions & 2 == 2) {
                        _tokenState |= 32; // Task6
                    } else if (conditions & 4 == 4) {
                        _tokenState |= 64; // Task7
                    } else {
                        _tokenState |= 32; // Default to Task6
                    }
                    id = 0;
                    continue;
                }
            }

            // Task 6: Confirm payment
            if (_tokenState & 32 != 0) {
                if (id == 6 && msg.sender == participants[11]) {
                    _tokenState &= ~uint(32);
                    id = 0;
                    continue;
                }
            }

            // Task 7: Refuse payment
            if (_tokenState & 64 != 0) {
                if (id == 7 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(64);
                    id = 0;
                    continue;
                }
            }

            if (prevTokenState == _tokenState) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
