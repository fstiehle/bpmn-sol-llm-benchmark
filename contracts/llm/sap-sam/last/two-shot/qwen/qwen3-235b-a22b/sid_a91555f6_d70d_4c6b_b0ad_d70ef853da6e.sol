// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T19:12:59.102Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
    uint public tokenState = 1;
    address[36] public participants;
    uint public conditions;
    constructor(address[36] memory _participants) {
        participants = _participants;
    }
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if ((_tokenState & 1) == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 2) == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 4) == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 8) == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 16) == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 32) == 32) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 64) == 64) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 128) == 128) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 256) == 256) {
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 512) == 512) {
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 1024) == 1024) {
                if (id == 11 && msg.sender == participants[20]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 2048) == 2048) {
                if (id == 12 && msg.sender == participants[22]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 4096) == 4096) {
                if (id == 13 && msg.sender == participants[24]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 16384;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 8192) == 8192) {
                if (id == 14 && msg.sender == participants[26]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 32768;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 16384) == 16384) {
                if (id == 15 && msg.sender == participants[28]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 65536;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 32768) == 32768) {
                if (id == 16 && msg.sender == participants[30]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 131072;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 65536) == 65536) {
                if (id == 17 && msg.sender == participants[32]) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 262144;
                    id = 0;
                    continue;
                }
            }
            if ((_tokenState & 131072) == 131072) {
                if (id == 18 && msg.sender == participants[34]) {
                    _tokenState &= ~uint(131072);
                    _tokenState |= 0;
                    break;
                }
            }
            if ((_tokenState & 262144) == 262144) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(262144);
                    _tokenState |= 524288;
                    continue;
                }
            }
            if ((_tokenState & 512) == 512) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    continue;
                }
            }
            if ((_tokenState & 1024) == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 4096;
                continue;
            }
            if ((_tokenState & 524288) == 524288) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(524288);
                    _tokenState |= 1048576;
                    continue;
                }
            }
            if ((_tokenState & 1048576) == 1048576) {
                if (conditions & 8 == 8) {
                    _tokenState &= ~uint(1048576);
                    _tokenState |= 2097152;
                    continue;
                }
            }
            if ((_tokenState & 2097152) == 2097152) {
                _tokenState &= ~uint(2097152);
                _tokenState |= 4194304;
                continue;
            }
            if ((_tokenState & 4194304) == 4194304) {
                _tokenState &= ~uint(4194304);
                _tokenState |= 8388608;
                continue;
            }
            if ((_tokenState & 8388608) == 8388608) {
                _tokenState &= ~uint(8388608);
                _tokenState |= 16777216;
                continue;
            }
            if ((_tokenState & 16777216) == 16777216) {
                _tokenState &= ~uint(16777216);
                _tokenState |= 33554432;
                continue;
            }
            if ((_tokenState & 33554432) == 33554432) {
                _tokenState &= ~uint(33554432);
                _tokenState |= 67108864;
                continue;
            }
            if ((_tokenState & 67108864) == 67108864) {
                _tokenState &= ~uint(67108864);
                _tokenState |= 134217728;
                continue;
            }
            if ((_tokenState & 134217728) == 134217728) {
                _tokenState &= ~uint(134217728);
                _tokenState |= 268435456;
                continue;
            }
            if ((_tokenState & 268435456) == 268435456) {
                _tokenState &= ~uint(268435456);
                _tokenState |= 536870912;
                continue;
            }
            if ((_tokenState & 536870912) == 536870912) {
                _tokenState &= ~uint(536870912);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
