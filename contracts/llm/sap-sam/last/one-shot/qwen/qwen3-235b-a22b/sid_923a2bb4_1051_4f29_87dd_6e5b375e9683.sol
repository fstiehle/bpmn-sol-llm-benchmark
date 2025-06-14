// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:06:59.417Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_923a2bb4_1051_4f29_87dd_6e5b375e9683 {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }

            if (_tokenState & 2 == 2 && id == 1) {
                require(msg.sender == participants[0], "Invalid participant");
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                id = 0;
                continue;
            }

            if (_tokenState & 4 == 4 && id == 2) {
                require(msg.sender == participants[2], "Invalid participant");
                _tokenState &= ~uint(4);
                _tokenState |= 8;
                id = 0;
                continue;
            }

            if (_tokenState & 8 == 8 && id == 3) {
                require(msg.sender == participants[4], "Invalid participant");
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                id = 0;
                continue;
            }

            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                if (conditions & 1 == 1) {
                    _tokenState |= 128;
                } else {
                    _tokenState |= 32;
                }
                continue;
            }

            if (_tokenState & 32 == 32 && id == 4) {
                require(msg.sender == participants[6], "Invalid participant");
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                id = 0;
                continue;
            }

            if (_tokenState & 64 == 64 && id == 6) {
                require(msg.sender == participants[10], "Invalid participant");
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                id = 0;
                continue;
            }

            if (_tokenState & 128 == 128 && id == 5) {
                require(msg.sender == participants[8], "Invalid participant");
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                id = 0;
                continue;
            }

            if (_tokenState & 256 == 256) {
                _tokenState &= ~uint(256);
                _tokenState = 0;
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
