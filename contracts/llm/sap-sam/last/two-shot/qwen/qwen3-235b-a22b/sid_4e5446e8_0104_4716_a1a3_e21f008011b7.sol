// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T10:51:43.309Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_4e5446e8_0104_4716_a1a3_e21f008011b7 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 != 0) {
                // ChoreographyTask_2D87C0AD (Bewerbung abschicken)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 != 0) {
                // ExclusiveGateway Unterlagen vollständig?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue;
            }
            if (_tokenState & 4 != 0) {
                // ChoreographyTask_6C8BD963 (Fehlende Unterlagen anfordern)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 != 0) {
                // ExclusiveGateway converging
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 16 != 0) {
                // ExclusiveGateway Zusage?
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                }
                continue;
            }
            if (_tokenState & 32 != 0) {
                // ChoreographyTask_8F147659 (Absage zuschicken)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 != 0) {
                // ChoreographyTask_2CD79A54 (Zusage zuschicken)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 != 0) {
                // ExclusiveGateway converging
                _tokenState &= ~uint(128);
                _tokenState |= 256;
                continue;
            }
            if (_tokenState & 256 != 0) {
                // EndEvent - terminate process
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
