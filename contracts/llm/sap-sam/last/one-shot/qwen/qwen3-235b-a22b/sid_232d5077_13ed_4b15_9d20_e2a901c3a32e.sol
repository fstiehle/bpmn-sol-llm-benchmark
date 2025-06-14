// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:24:26.360Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_232d5077_13ed_4b15_9d20_e2a901c3a32e {
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- StartEvent --->
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- ParallelSplit --->
                _tokenState &= ~uint(2);
                _tokenState |= 4 | 8;
                continue;
            }
            if (_tokenState & 4 == 4) {
                // <--- Task1 --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    if ((_tokenState & 8) == 0) _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- Task2 --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    if ((_tokenState & 4) == 0) _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ParallelJoin --->
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- ExclusiveGateway --->
                _tokenState &= ~uint(32);
                if ((conditions & 1) == 1) {
                    _tokenState |= 64;
                } else if ((conditions & 2) == 2) {
                    _tokenState |= 128;
                } else {
                    _tokenState |= 64;
                }
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- Task3 --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- Task4 --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- EndEvent --->
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
