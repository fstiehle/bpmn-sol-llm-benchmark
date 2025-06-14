// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:20:05.230Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_2d1e227a_58f3_4930_b164_447879c628b0 {
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
            if (_tokenState & 1 == 1) {
                // Task 1: Kundenanruf
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Exclusive Gateway: Problem am Tel. lösbar ?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: Lösung erklären
                if (id == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 3: Problem weitergeben
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 4: Service-Techniker anrufen
                if (id == 4 && msg.sender == participants[7]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Task 5: Zu Kunde fahren
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Task 6: Problem lösen
                if (id == 6 && msg.sender == participants[11]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 7: Formular unterschreiben lassen
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
