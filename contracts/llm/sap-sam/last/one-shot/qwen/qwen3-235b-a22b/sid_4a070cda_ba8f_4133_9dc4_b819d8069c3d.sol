// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T08:49:10.563Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_4a070cda_ba8f_4133_9dc4_b819d8069c3d {
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
            uint nextTokenState = _tokenState;

            // Process choreography tasks
            if ((_tokenState & 1) == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    nextTokenState &= ~uint(1);
                    nextTokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 2) == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    nextTokenState &= ~uint(2);
                    nextTokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 4) == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    nextTokenState &= ~uint(4);
                    nextTokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 8) == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    nextTokenState &= ~uint(8);
                    nextTokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 16) == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    nextTokenState &= ~uint(16);
                    nextTokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 32) == 32) {
                if (id == 6 && msg.sender == participants[10]) {
                    nextTokenState &= ~uint(32);
                    nextTokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 64) == 64) {
                if (id == 7 && msg.sender == participants[12]) {
                    nextTokenState &= ~uint(64);
                    nextTokenState |= 0;
                    break;
                }
            }

            // Process parallel gateways
            if ((_tokenState & 128) == 128) {
                // Parallel split gateway
                nextTokenState &= ~uint(128);
                nextTokenState |= 4 | 8;
                continue;
            }
            if ((_tokenState & 256) == 256) {
                // Parallel join gateway
                if ((_tokenState & 4) == 0 && (_tokenState & 32) == 0) {
                    nextTokenState &= ~uint(256);
                    nextTokenState |= 64;
                }
                continue;
            }

            if (_tokenState == nextTokenState) {
                break;
            }
            _tokenState = nextTokenState;
        }
        tokenState = _tokenState;
    }
}
