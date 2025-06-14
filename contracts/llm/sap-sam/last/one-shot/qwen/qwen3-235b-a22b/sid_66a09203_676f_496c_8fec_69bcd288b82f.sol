// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T00:44:06.567Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
    uint public tokenState = 1;
    address[15] public participants;
    uint public conditions;

    constructor(address[15] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState = 0;
                }
                continue;
            }

            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 96;
                continue;
            }

            if (_tokenState & 32 == 32) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                if ((_tokenState & 96) == 0) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                }
                continue;
            }

            if (_tokenState & 256 == 256) {
                if (id == 6 && msg.sender == participants[11]) {
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
