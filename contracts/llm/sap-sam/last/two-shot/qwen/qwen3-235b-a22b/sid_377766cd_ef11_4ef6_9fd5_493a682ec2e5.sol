// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T09:41:05.109Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Handle Exclusive Gateway 1 (split)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                } else {
                    _tokenState &= ~uint(1);
                    _tokenState |= 4;
                }
                continue;
            }

            if (_tokenState & 4 == 4 && id == 1) {
                require(msg.sender == participants[0]);
                _tokenState &= ~uint(4);
                _tokenState |= 8;
                id = 0;
                continue;
            }

            if (_tokenState & 2 == 2 && id == 2) {
                require(msg.sender == participants[2]);
                _tokenState &= ~uint(2);
                _tokenState |= 8;
                id = 0;
                continue;
            }

            if (_tokenState & 8 == 8) {
                // Handle Exclusive Gateway 2 (join)
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }

            if (_tokenState & 16 == 16 && id == 8) {
                require(msg.sender == participants[14]);
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                id = 0;
                continue;
            }

            if (_tokenState & 32 == 32) {
                // Handle Exclusive Gateway 3 (split)
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                }
                continue;
            }

            if (_tokenState & 128 == 128 && id == 4) {
                require(msg.sender == participants[6]);
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                id = 0;
                continue;
            }

            if (_tokenState & 256 == 256 && id == 6) {
                require(msg.sender == participants[10]);
                _tokenState &= ~uint(256);
                _tokenState |= 512;
                id = 0;
                continue;
            }

            if (_tokenState & 512 == 512 && id == 7) {
                require(msg.sender == participants[12]);
                _tokenState &= ~uint(512);
                _tokenState |= 1024;
                id = 0;
                continue;
            }

            if (_tokenState & 64 == 64 && id == 3) {
                require(msg.sender == participants[4]);
                _tokenState &= ~uint(64);
                _tokenState |= 2048;
                id = 0;
                continue;
            }

            if (_tokenState & 2048 == 2048 && id == 5) {
                require(msg.sender == participants[8]);
                _tokenState &= ~uint(2048);
                _tokenState |= 1024;
                id = 0;
                continue;
            }

            if (_tokenState & 1024 == 1024) {
                // Handle Exclusive Gateway 5 (join)
                _tokenState &= ~uint(1024);
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}
