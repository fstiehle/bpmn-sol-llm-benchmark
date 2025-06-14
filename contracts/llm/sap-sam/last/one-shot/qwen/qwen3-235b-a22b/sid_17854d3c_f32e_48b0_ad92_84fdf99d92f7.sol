// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T17:41:36.247Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
    uint public tokenState = 1;
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            uint nextTokenState = _tokenState;

            // Converging Gateway (bit1)
            if (nextTokenState & 1 == 1) {
                nextTokenState &= ~uint(1);
                nextTokenState |= 2;
                continue;
            }

            // ChoreographyTask_2 (bit2, taskID=2)
            if (nextTokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    nextTokenState &= ~uint(2);
                    nextTokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask_3 (bit4, taskID=3)
            if (nextTokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    nextTokenState &= ~uint(4);
                    nextTokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask_6 (bit8, taskID=6)
            if (nextTokenState & 8 == 8) {
                if (id == 6 && msg.sender == participants[10]) {
                    nextTokenState &= ~uint(8);
                    nextTokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // Diverging Gateway (bit16)
            if (nextTokenState & 16 == 16) {
                nextTokenState &= ~uint(16);
                if (conditions & 1 == 1) {
                    nextTokenState |= 32;
                } else {
                    nextTokenState |= 64;
                }
                continue;
            }

            // ChoreographyTask_4 (bit64, taskID=4)
            if (nextTokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[6]) {
                    nextTokenState &= ~uint(64);
                    nextTokenState |= 1;
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask_5 (bit32, taskID=5)
            if (nextTokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[8]) {
                    nextTokenState &= ~uint(32);
                    nextTokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask_1 (bit128, taskID=1)
            if (nextTokenState & 128 == 128) {
                if (id == 1 && msg.sender == participants[0]) {
                    nextTokenState &= ~uint(128);
                    nextTokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            // Diverging Gateway (bit256)
            if (nextTokenState & 256 == 256) {
                nextTokenState &= ~uint(256);
                if (conditions & 2 == 2) {
                    nextTokenState |= 512;
                } else {
                    nextTokenState |= 1024;
                }
                continue;
            }

            // ChoreographyTask_10 (bit1024, taskID=10)
            if (nextTokenState & 1024 == 1024) {
                if (id == 10 && msg.sender == participants[18]) {
                    nextTokenState &= ~uint(1024);
                    nextTokenState = 0;
                    id = 0;
                    break;
                }
            }

            // ChoreographyTask_7 (bit512, taskID=7)
            if (nextTokenState & 512 == 512) {
                if (id == 7 && msg.sender == participants[12]) {
                    nextTokenState &= ~uint(512);
                    nextTokenState |= 2048;
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask_8 (bit2048, taskID=8)
            if (nextTokenState & 2048 == 2048) {
                if (id == 8 && msg.sender == participants[14]) {
                    nextTokenState &= ~uint(2048);
                    nextTokenState |= 4096;
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask_9 (bit4096, taskID=9)
            if (nextTokenState & 4096 == 4096) {
                if (id == 9 && msg.sender == participants[16]) {
                    nextTokenState &= ~uint(4096);
                    nextTokenState = 0;
                    id = 0;
                    break;
                }
            }

            if (nextTokenState == _tokenState) {
                break;
            }
            _tokenState = nextTokenState;
        }
        tokenState = _tokenState;
    }
}
