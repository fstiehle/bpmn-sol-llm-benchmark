// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T13:31:28.105Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_7dd609da_b461_4317_8d21_aa67f3d3c43c {
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
                // ChoreographyTask_1 Prijavljivanje problema
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask_2 Dobijanje detaljnog opisa problema
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    if (conditions & 1 == 1) {
                        _tokenState |= 8;
                    } else {
                        _tokenState |= 4;
                    }
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask_3 Dostavljanje resenja
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask_4 Konsultovanje tehnicke podrske
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask_5 Dostavljanje resenja
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
