// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:43:51.175Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_9f1baa6b_3120_4b80_a997_c90b03aee22b {
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
                // ChoreographyTask_1 (Make travel offer)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask_2 (Place order)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 12;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask_3 (Reject Order)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(12);
                    _tokenState = 0;
                    break;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask_4 (Apply order)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(12);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask_5 (Confirm booking)
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask_6 (Pay travel)
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask_7 (Order ticket)
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    if (conditions & 1 == 1) {
                        _tokenState |= 256;
                    } else {
                        _tokenState |= 128;
                    }
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask_8 (Refuse payment)
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState = 0;
                    break;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask_9 (Confirm payment)
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(256);
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
