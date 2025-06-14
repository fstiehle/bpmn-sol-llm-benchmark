// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:39:24.544Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_9c7ac309_082b_476a_9da8_b1e0942c6968 {
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
                if (id == 1) {
                    require(msg.sender == participants[0], "Invalid participant for task 1");
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (id == 2) {
                    require(msg.sender == participants[2], "Invalid participant for task 2");
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (id == 3) {
                    require(msg.sender == participants[4], "Invalid participant for task 3");
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                _tokenState &= ~uint(8);
                if (conditions & 1 == 1) {
                    _tokenState |= 32;
                } else {
                    _tokenState |= 16;
                }
                continue;
            }
            if (_tokenState & 16 == 16) {
                if (id == 4) {
                    require(msg.sender == participants[6], "Invalid participant for task 4");
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                if (id == 5) {
                    require(msg.sender == participants[8], "Invalid participant for task 5");
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
