// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T04:28:57.613Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_af6aa62d_6560_44f0_bbbc_66fc174549b6 {
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
        while (true) {
            bool stateChanged = false;
            
            if (_tokenState & 1 != 0) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 2 != 0) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 256;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 4 != 0) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 8 != 0) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 512;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 16 != 0) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 32 != 0) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 64 != 0) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 128 != 0) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 1024;
                    id = 0;
                    stateChanged = true;
                    continue;
                }
            }
            if (_tokenState & 256 != 0) {
                _tokenState &= ~uint(256);
                if (conditions & 1 == 1) {
                    _tokenState |= 4;
                }
                stateChanged = true;
                continue;
            }
            if (_tokenState & 512 != 0) {
                _tokenState &= ~uint(512);
                if (conditions & 2 == 2) {
                    _tokenState |= 16;
                } else {
                    _tokenState |= 4;
                }
                stateChanged = true;
                continue;
            }
            if (_tokenState & 1024 != 0) {
                _tokenState &= ~uint(1024);
                if (conditions & 4 == 4) {}
                stateChanged = true;
                continue;
            }
            
            if (!stateChanged) break;
        }
        tokenState = _tokenState;
    }
}
