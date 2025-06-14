// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T02:04:41.725Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_066fd018_ea41_408e_a465_7c059ef87b32 {
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Einbuchung Forderungen / Erloese
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Erstellen der Datei fuer die Mieteneinzuege
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Weiterleitung des Datentraegers an Bank
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Abbuchungen der Mieten
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Zahlungseingang
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // Rueckbuchung Bank
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Ausbuchen der Forderung
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 256 == 256) {
                // Versand Zahlschein
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    continue;
                }
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            if (_tokenState & 512 == 512) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0;
                    break;
                }
                _tokenState &= ~uint(512);
                _tokenState |= 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
