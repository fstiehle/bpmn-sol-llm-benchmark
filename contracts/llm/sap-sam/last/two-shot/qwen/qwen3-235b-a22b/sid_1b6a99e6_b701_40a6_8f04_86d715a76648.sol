// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:38:32.873Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_1b6a99e6_b701_40a6_8f04_86d715a76648 {
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
                // ChoreographyTask_1 (Bewerbung und Eingangsbestätigung senden)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask_2 (Fehlende Unterlagen anfordern)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask_3 (Fehlende Unterlagen schicken)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask_4 (Zusage senden)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState = 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask_5 (Absage senden)
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState = 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // ExclusiveGateway (Bewerbung vollständig ?)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 2;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                }
                continue;
            }
            if (_tokenState & 64 == 64) {
                // Converging Gateway to next ExclusiveGateway
                _tokenState &= ~uint(64);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 128 == 128) {
                // ExclusiveGateway (Bewerbung ausreichend ?)
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 8;
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16;
                }
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
