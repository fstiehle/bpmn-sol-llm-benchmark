// test x-ai/grok-3-beta - one-shot at 2025-06-11T18:40:03.685Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_066fd018_ea41_408e_a465_7c059ef87b32 {
    uint public tokenState = 1; // Start with the start event active
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
                // Start Event to Task 1 (sid-FBDE4BCA-F588-46B2-B001-A48909222AA7)
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Task 1: Einbuchung Forderungen / Erloese
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Task 2: Erstellen der Datei fuer die Mieteneinzuege
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task 3: Weiterleitung des Datentraegers an Bank
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task 4: Abbuchungen der Mieten
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway: Konto gedeckt?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Go to Task 6 (sid-BEE7DB4D-D839-41F6-8AE3-201B0F3C19C6)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Default path to Task 5 (sid-39618A3C-58A6-44AC-9142-66016323280F)
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Task 5: Zahlungseingang
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Task 6: Rueckbuchung Bank
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // Task 7: Ausbuchen der Forderung
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 2048; // End event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // Task 8: Versand Zahlschein
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Go to second gateway
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // Exclusive Gateway: bezahlt?
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // End event
                    continue;
                } else {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Default path to end event
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // End event
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}