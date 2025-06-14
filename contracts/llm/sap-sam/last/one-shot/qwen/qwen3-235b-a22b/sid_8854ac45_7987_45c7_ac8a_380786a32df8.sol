// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T02:27:50.946Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_8854ac45_7987_45c7_ac8a_380786a32df8 {
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

        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Task 1: finds gewünschten Titel nicht, stellt Anfrage
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 == 2) {
                // Task 2: überprüft Mediathek nach diesem Titel
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 4 == 4) {
                // Task 3: macht Angebot
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 8 == 8) {
                // Task 4: prüft Angebot
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 16 == 16) {
                // Exclusive Gateway
                // Check if condition is satisfied
                if ((conditions & 1) == 1) {
                    // Condition satisfied, activate task 5
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                } else {
                    // Default flow, activate task 6
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                }
                continue;
            }

            if (_tokenState & 32 == 32) {
                // Task 5: leitet Angebot weiter
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 == 64) {
                // Task 6: leitet Angebot nicht weiter
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 128 == 128) {
                // Task 7: Bezahlung der Lizenzgebühr des Titels
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 256 == 256) {
                // End event from Task 6
                _tokenState &= ~uint(256);
                _tokenState |= 0;
                break;
            }

            if (_tokenState & 512 == 512) {
                // Task 8: fügt den neuen Titel in Mediathek hinzu
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 1024 == 1024) {
                // End event from Task 8
                _tokenState &= ~uint(1024);
                _tokenState |= 0;
                break;
            }

            break;
        }

        tokenState = _tokenState;
    }
}
