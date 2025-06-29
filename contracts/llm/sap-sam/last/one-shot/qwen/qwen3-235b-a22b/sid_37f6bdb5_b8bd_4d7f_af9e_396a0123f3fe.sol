// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T23:01:13.057Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_37f6bdb5_b8bd_4d7f_af9e_396a0123f3fe {
    uint public tokenState = 1;
    address[22] public participants;
    uint public conditions;

    constructor(address[22] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Task 1: sid-D082CB9A-9032-4E4F-A774-24587B56EC2C
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 2 == 2) {
                // Task 2: sid-A99EC8AF-2A07-42B8-B705-C349B0697C0A
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 4 == 4) {
                // Task 3: sid-73C4A4E8-1BF5-44AF-9E6F-56BF193B6006
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 8 == 8) {
                // Task 4: sid-3692247E-B6E2-4D88-A25C-663B2ECA3078
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 16 == 16) {
                // Task 5: sid-1966F81A-52D3-430F-A06C-158E890CF831
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 128 == 128) {
                // Task 8: sid-F3304F4E-5727-4B0C-A448-BF7B0B817EB0
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 32 == 32) {
                // Task 6: sid-F48B99BF-6D6F-45FD-924D-DF72B4957793
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 64 == 64) {
                // Task 7: sid-E1BF0A38-F29B-4BB1-9639-3C8E12F20701
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 256 == 256) {
                // Task 9: sid-B31C9288-7361-40F1-A639-17D9BDC7C7B3
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 512 == 512) {
                // Task 10: sid-5EC4C845-4A7C-4094-A7A3-8CC6E152F5BB
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
                break;
            }
            if (_tokenState & 1024 == 1024) {
                // Task 11: sid-3A73F6D4-1226-4FDD-B16B-3E5F3C7B6B4B
                if (id == 11 && msg.sender == participants[20]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break;
                }
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
