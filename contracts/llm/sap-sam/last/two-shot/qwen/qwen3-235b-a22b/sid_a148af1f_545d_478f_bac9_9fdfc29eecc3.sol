// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T15:37:34.135Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_a148af1f_545d_478f_bac9_9fdfc29eecc3 {
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
            // Task 1: Registrierung auslösen
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // Task 2: Öffnet Fenster
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            // Task 3: Gibt Daten ein
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            // Task 4: Zwischenspeichert Daten
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // Task 5: Gibt Passwort nochmals ein
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            // Task 6: Prüft auf Übereinstimmung
            if (_tokenState & 32 == 32) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    if (conditions & 1 == 1) {
                        _tokenState |= 64;  // Condition met: proceed to Task 7
                    } else {
                        _tokenState |= 16;  // Default: loop back to Task 5
                    }
                    id = 0;
                    continue;
                }
            }

            // Task 7: bestätigt Registrierung
            if (_tokenState & 64 == 64) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            // Task 8: Speichert Daten ab
            if (_tokenState & 128 == 128) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    break;  // Terminate process
                }
            }

            // No more automatic transitions or tasks to process
            break;
        }
        tokenState = _tokenState;
    }
}
