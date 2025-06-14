// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T09:09:01.406Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_21aac2de_d691_4d66_8b8f_709c14cb84c4 {
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
            // T1: sid-06D8F2D0-6BD1-4AF1-B057-F2BDF456D669 (id=1)
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // PG_S (split gateway)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                _tokenState |= 4 | 8;
                continue;
            }

            // T2: sid-A06E9F8A-1AFE-44B0-B216-2031CB8BE358 (id=2)
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    id = 0;
                    continue;
                }
            }

            // T3: sid-03DBAEBA-74CD-4B04-BD71-F56E32E84F02 (id=3)
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    id = 0;
                    continue;
                }
            }

            // Check activation of PG_J (join gateway)
            if ((_tokenState & (4 | 8)) == 0 && (_tokenState & 16) == 0) {
                _tokenState |= 16;
                continue;
            }

            // PG_J (join gateway)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }

            // EG1 (exclusive gateway)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                if (conditions & 1 == 1) {
                    _tokenState = 0;
                } else {
                    _tokenState |= 64;
                }
                continue;
            }

            // T4: sid-24729521-9EAE-4157-8A7A-D2C60B7B8FF7 (id=4)
            if (_tokenState & 64 == 64) {
                if (id == 4 && msg.sender == participants[7]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            // EG2 (exclusive gateway)
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                if (conditions & 2 == 2) {
                    _tokenState |= 256;
                } else {
                    _tokenState = 0;
                }
                continue;
            }

            // T5: sid-F8A4FB9C-08D5-433D-8DA5-4990DE96F98E (id=5)
            if (_tokenState & 256 == 256) {
                if (id == 5 && msg.sender == participants[10]) {
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
