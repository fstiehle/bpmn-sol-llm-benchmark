// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:41:55.765Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_a056cead_b17c_4c35_a48f_be2eaf273826 {
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
                // ChoreographyTask Anfrage stellen
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask Angebot vorlegen
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask Absage erteilen
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask Aenderungswuensche mitteilen
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask Auftrag erteilen
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask Verfuegbarkeit anfragen
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask Grafik erstellen lassen
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask Freigabe holen
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 2 == 2) {
                // Exclusive gateway converging - auto transition
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // Exclusive gateway diverging
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    continue;
                }
                // Default path
                _tokenState &= ~uint(8);
                _tokenState |= 64;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
