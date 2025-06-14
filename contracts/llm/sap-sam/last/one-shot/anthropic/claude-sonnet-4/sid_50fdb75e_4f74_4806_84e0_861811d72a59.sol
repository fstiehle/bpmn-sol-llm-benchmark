// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T20:42:32.187Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_50fdb75e_4f74_4806_84e0_861811d72a59 {
    uint public tokenState = 1;
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask Anmelden in der App
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Anmeldung fehlgeschlagen
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask Anmeldung erfolgreich
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Support Kontakt suchen
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask Support anrufen und Schaden melden
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask Schaden weiterleiten
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Fahrrad Standort suchen
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Fahrrad in der App sperren
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask Schaden reparieren
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // ChoreographyTask Fahrrad freistellen
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
